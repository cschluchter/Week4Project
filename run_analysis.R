#Week 4 Project
#run_analysis.R

library(dplyr)

#load train data
X_train <- read.table("C:/Users/A42512/Documents/1-1/Training/Data Science Foundations using R Specialization/Part 3 - Getting and Cleaning Data/UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")

y_train <- read.table("C:/Users/A42512/Documents/1-1/Training/Data Science Foundations using R Specialization/Part 3 - Getting and Cleaning Data/UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")
y_train <- rename(y_train, PersonID = V1)
train <- cbind(y_train, X_train)

#load test data
X_test <- read.table("C:/Users/A42512/Documents/1-1/Training/Data Science Foundations using R Specialization/Part 3 - Getting and Cleaning Data/UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")

y_test <- read.table("C:/Users/A42512/Documents/1-1/Training/Data Science Foundations using R Specialization/Part 3 - Getting and Cleaning Data/UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")
y_test <- rename(y_test, PersonID = V1)
test <- cbind(y_test, X_test)

#merge train and test data
combo <- rbind(train, test)

#name columns in combo data set
combo <- rename(combo, "tBodyAcc-mean()-X"=V1,
                "tBodyAcc-mean()-Y"=V2,
                "tBodyAcc-mean()-Z"=V3,
                "tBodyAcc-std()-X"=V4,
                "tBodyAcc-std()-Y"=V5,
                "tBodyAcc-std()-Z"=V6,
                "tBodyAcc-mad()-X"=V7,
                "tBodyAcc-mad()-Y"=V8,
                "tBodyAcc-mad()-Z"=V9,
                "tBodyAcc-max()-X"=V10,
                "tBodyAcc-max()-Y"=V11,
                "tBodyAcc-max()-Z"=V12,
                "tBodyAcc-min()-X"=V13,
                "tBodyAcc-min()-Y"=V14,
                "tBodyAcc-min()-Z"=V15,
                "tBodyAcc-sma()"=V16,
                "tBodyAcc-energy()-X"=V17,
                "tBodyAcc-energy()-Y"=V18,
                "tBodyAcc-energy()-Z"=V19,
                "tBodyAcc-iqr()-X"=V20,
                "tBodyAcc-iqr()-Y"=V21,
                "tBodyAcc-iqr()-Z"=V22,
                "tBodyAcc-entropy()-X"=V23,
                "tBodyAcc-entropy()-Y"=V24,
                "tBodyAcc-entropy()-Z"=V25,
                "tBodyAcc-arCoeff()-X,1"=V26,
                "tBodyAcc-arCoeff()-X,2"=V27,
                "tBodyAcc-arCoeff()-X,3"=V28,
                "tBodyAcc-arCoeff()-X,4"=V29,
                "tBodyAcc-arCoeff()-Y,1"=V30,
                "tBodyAcc-arCoeff()-Y,2"=V31,
                "tBodyAcc-arCoeff()-Y,3"=V32,
                "tBodyAcc-arCoeff()-Y,4"=V33,
                "tBodyAcc-arCoeff()-Z,1"=V34,
                "tBodyAcc-arCoeff()-Z,2"=V35,
                "tBodyAcc-arCoeff()-Z,3"=V36,
                "tBodyAcc-arCoeff()-Z,4"=V37,
                "tBodyAcc-correlation()-X,Y"=V38,
                "tBodyAcc-correlation()-X,Z"=V39,
                "tBodyAcc-correlation()-Y,Z"=V40,
                "tGravityAcc-mean()-X"=V41,
                "tGravityAcc-mean()-Y"=V42,
                "tGravityAcc-mean()-Z"=V43,
                "tGravityAcc-std()-X"=V44,
                "tGravityAcc-std()-Y"=V45,
                "tGravityAcc-std()-Z"=V46,
                "tGravityAcc-mad()-X"=V47,
                "tGravityAcc-mad()-Y"=V48,
                "tGravityAcc-mad()-Z"=V49,
                "tGravityAcc-max()-X"=V50,
                "tGravityAcc-max()-Y"=V51,
                "tGravityAcc-max()-Z"=V52,
                "tGravityAcc-min()-X"=V53,
                "tGravityAcc-min()-Y"=V54,
                "tGravityAcc-min()-Z"=V55,
                "tGravityAcc-sma()"=V56,
               "tGravityAcc-energy()-X"=V57,
                "tGravityAcc-energy()-Y"=V58,
                "tGravityAcc-energy()-Z"=V59,
                "tGravityAcc-iqr()-X"=V60,
                "tGravityAcc-iqr()-Y"=V61,
                "tGravityAcc-iqr()-Z"=V62,
                "tGravityAcc-entropy()-X"=V63,
                "tGravityAcc-entropy()-Y"=V64,
                "tGravityAcc-entropy()-Z"=V65,
                "tGravityAcc-arCoeff()-X,1"=V66,
                "tGravityAcc-arCoeff()-X,2"=V67,
                "tGravityAcc-arCoeff()-X,3"=V68,
                "tGravityAcc-arCoeff()-X,4"=V69,
                "tGravityAcc-arCoeff()-Y,1"=V70,
                "tGravityAcc-arCoeff()-Y,2"=V71,
                "tGravityAcc-arCoeff()-Y,3"=V72,
                "tGravityAcc-arCoeff()-Y,4"=V73,
                "tGravityAcc-arCoeff()-Z,1"=V74,
                "tGravityAcc-arCoeff()-Z,2"=V75,
                "tGravityAcc-arCoeff()-Z,3"=V76,
                "tGravityAcc-arCoeff()-Z,4"=V77,
                "tGravityAcc-correlation()-X,Y"=V78,
                "tGravityAcc-correlation()-X,Z"=V79,
                "tGravityAcc-correlation()-Y,Z"=V80,
                "tBodyAccJerk-mean()-X"=V81,
                "tBodyAccJerk-mean()-Y"=V82,
                "tBodyAccJerk-mean()-Z"=V83,
                "tBodyAccJerk-std()-X"=V84,
                "tBodyAccJerk-std()-Y"=V85,
                "tBodyAccJerk-std()-Z"=V86,
                "tBodyAccJerk-mad()-X"=V87,
                "tBodyAccJerk-mad()-Y"=V88,
                "tBodyAccJerk-mad()-Z"=V89,
                "tBodyAccJerk-max()-X"=V90,
                "tBodyAccJerk-max()-Y"=V91,
                "tBodyAccJerk-max()-Z"=V92,
                "tBodyAccJerk-min()-X"=V93,
                "tBodyAccJerk-min()-Y"=V94,
                "tBodyAccJerk-min()-Z"=V95,
                "tBodyAccJerk-sma()"=V96,
                "tBodyAccJerk-energy()-X"=V97,
                "tBodyAccJerk-energy()-Y"=V98,
                "tBodyAccJerk-energy()-Z"=V99,
                "tBodyAccJerk-iqr()-X"=V100,
                "tBodyAccJerk-iqr()-Y"=V101,
                "tBodyAccJerk-iqr()-Z"=V102,
                "tBodyAccJerk-entropy()-X"=V103,
                "tBodyAccJerk-entropy()-Y"=V104,
                "tBodyAccJerk-entropy()-Z"=V105,
                "tBodyAccJerk-arCoeff()-X,1"=V106,
                "tBodyAccJerk-arCoeff()-X,2"=V107,
                "tBodyAccJerk-arCoeff()-X,3"=V108,
                "tBodyAccJerk-arCoeff()-X,4"=V109,
                "tBodyAccJerk-arCoeff()-Y,1"=V110,
                "tBodyAccJerk-arCoeff()-Y,2"=V111,
                "tBodyAccJerk-arCoeff()-Y,3"=V112,
                "tBodyAccJerk-arCoeff()-Y,4"=V113,
                "tBodyAccJerk-arCoeff()-Z,1"=V114,
                "tBodyAccJerk-arCoeff()-Z,2"=V115,
                "tBodyAccJerk-arCoeff()-Z,3"=V116,
                "tBodyAccJerk-arCoeff()-Z,4"=V117,
                "tBodyAccJerk-correlation()-X,Y"=V118,
                "tBodyAccJerk-correlation()-X,Z"=V119,
                "tBodyAccJerk-correlation()-Y,Z"=V120,
                "tBodyGyro-mean()-X"=V121,
                "tBodyGyro-mean()-Y"=V122,
                "tBodyGyro-mean()-Z"=V123,
                "tBodyGyro-std()-X"=V124,
                "tBodyGyro-std()-Y"=V125,
                "tBodyGyro-std()-Z"=V126,
                "tBodyGyro-mad()-X"=V127,
                "tBodyGyro-mad()-Y"=V128,
                "tBodyGyro-mad()-Z"=V129,
                "tBodyGyro-max()-X"=V130,
                "tBodyGyro-max()-Y"=V131,
                "tBodyGyro-max()-Z"=V132,
                "tBodyGyro-min()-X"=V133,
                "tBodyGyro-min()-Y"=V134,
                "tBodyGyro-min()-Z"=V135,
                "tBodyGyro-sma()"=V136,
                "tBodyGyro-energy()-X"=V137,
                "tBodyGyro-energy()-Y"=V138,
                "tBodyGyro-energy()-Z"=V139,
                "tBodyGyro-iqr()-X"=V140,
                "tBodyGyro-iqr()-Y"=V141,
                "tBodyGyro-iqr()-Z"=V142,
                "tBodyGyro-entropy()-X"=V143,
                "tBodyGyro-entropy()-Y"=V144,
                "tBodyGyro-entropy()-Z"=V145,
                "tBodyGyro-arCoeff()-X,1"=V146,
                "tBodyGyro-arCoeff()-X,2"=V147,
                "tBodyGyro-arCoeff()-X,3"=V148,
                "tBodyGyro-arCoeff()-X,4"=V149,
                "tBodyGyro-arCoeff()-Y,1"=V150,
                "tBodyGyro-arCoeff()-Y,2"=V151,
                "tBodyGyro-arCoeff()-Y,3"=V152,
                "tBodyGyro-arCoeff()-Y,4"=V153,
               "tBodyGyro-arCoeff()-Z,1"=V154,
                "tBodyGyro-arCoeff()-Z,2"=V155,
                "tBodyGyro-arCoeff()-Z,3"=V156,
                "tBodyGyro-arCoeff()-Z,4"=V157,
                "tBodyGyro-correlation()-X,Y"=V158,
                "tBodyGyro-correlation()-X,Z"=V159,
                "tBodyGyro-correlation()-Y,Z"=V160,
                "tBodyGyroJerk-mean()-X"=V161,
                "tBodyGyroJerk-mean()-Y"=V162,
                "tBodyGyroJerk-mean()-Z"=V163,
                "tBodyGyroJerk-std()-X"=V164,
                "tBodyGyroJerk-std()-Y"=V165,
                "tBodyGyroJerk-std()-Z"=V166,
                "tBodyGyroJerk-mad()-X"=V167,
                "tBodyGyroJerk-mad()-Y"=V168,
                "tBodyGyroJerk-mad()-Z"=V169,
                "tBodyGyroJerk-max()-X"=V170,
               "tBodyGyroJerk-max()-Y"=V171,
                "tBodyGyroJerk-max()-Z"=V172,
                "tBodyGyroJerk-min()-X"=V173,
                "tBodyGyroJerk-min()-Y"=V174,
                "tBodyGyroJerk-min()-Z"=V175,
                "tBodyGyroJerk-sma()"=V176,
                "tBodyGyroJerk-energy()-X"=V177,
                "tBodyGyroJerk-energy()-Y"=V178,
                "tBodyGyroJerk-energy()-Z"=V179,
                "tBodyGyroJerk-iqr()-X"=V180,
                "tBodyGyroJerk-iqr()-Y"=V181,
                "tBodyGyroJerk-iqr()-Z"=V182,
                "tBodyGyroJerk-entropy()-X"=V183,
                "tBodyGyroJerk-entropy()-Y"=V184,
                "tBodyGyroJerk-entropy()-Z"=V185,
                "tBodyGyroJerk-arCoeff()-X,1"=V186,
                "tBodyGyroJerk-arCoeff()-X,2"=V187,
                "tBodyGyroJerk-arCoeff()-X,3"=V188,
                "tBodyGyroJerk-arCoeff()-X,4"=V189,
                "tBodyGyroJerk-arCoeff()-Y,1"=V190,
                "tBodyGyroJerk-arCoeff()-Y,2"=V191,
                "tBodyGyroJerk-arCoeff()-Y,3"=V192,
                "tBodyGyroJerk-arCoeff()-Y,4"=V193,
                "tBodyGyroJerk-arCoeff()-Z,1"=V194,
                "tBodyGyroJerk-arCoeff()-Z,2"=V195,
                "tBodyGyroJerk-arCoeff()-Z,3"=V196,
                "tBodyGyroJerk-arCoeff()-Z,4"=V197,
                "tBodyGyroJerk-correlation()-X,Y"=V198,
                "tBodyGyroJerk-correlation()-X,Z"=V199,
                "tBodyGyroJerk-correlation()-Y,Z"=V200,
                "tBodyAccMag-mean()"=V201,
                "tBodyAccMag-std()"=V202,
                "tBodyAccMag-mad()"=V203,
                "tBodyAccMag-max()"=V204,
                "tBodyAccMag-min()"=V205,
                "tBodyAccMag-sma()"=V206,
                "tBodyAccMag-energy()"=V207,
                "tBodyAccMag-iqr()"=V208,
                "tBodyAccMag-entropy()"=V209,
                "tBodyAccMag-arCoeff()1"=V210,
                "tBodyAccMag-arCoeff()2"=V211,
                "tBodyAccMag-arCoeff()3"=V212,
                "tBodyAccMag-arCoeff()4"=V213,
                "tGravityAccMag-mean()"=V214,
                "tGravityAccMag-std()"=V215,
                "tGravityAccMag-mad()"=V216,
                "tGravityAccMag-max()"=V217,
                "tGravityAccMag-min()"=V218,
                "tGravityAccMag-sma()"=V219,
                "tGravityAccMag-energy()"=V220,
                "tGravityAccMag-iqr()"=V221,
                "tGravityAccMag-entropy()"=V222,
                "tGravityAccMag-arCoeff()1"=V223,
                "tGravityAccMag-arCoeff()2"=V224,
                "tGravityAccMag-arCoeff()3"=V225,
                "tGravityAccMag-arCoeff()4"=V226,
                "tBodyAccJerkMag-mean()"=V227,
                "tBodyAccJerkMag-std()"=V228,
                "tBodyAccJerkMag-mad()"=V229,
                "tBodyAccJerkMag-max()"=V230,
                "tBodyAccJerkMag-min()"=V231,
                "tBodyAccJerkMag-sma()"=V232,
                "tBodyAccJerkMag-energy()"=V233,
                "tBodyAccJerkMag-iqr()"=V234,
                "tBodyAccJerkMag-entropy()"=V235,
                "tBodyAccJerkMag-arCoeff()1"=V236,
                "tBodyAccJerkMag-arCoeff()2"=V237,
                "tBodyAccJerkMag-arCoeff()3"=V238,
                "tBodyAccJerkMag-arCoeff()4"=V239,
                "tBodyGyroMag-mean()"=V240,
                "tBodyGyroMag-std()"=V241,
                "tBodyGyroMag-mad()"=V242,
                "tBodyGyroMag-max()"=V243,
                "tBodyGyroMag-min()"=V244,
                "tBodyGyroMag-sma()"=V245,
                "tBodyGyroMag-energy()"=V246,
                "tBodyGyroMag-iqr()"=V247,
                "tBodyGyroMag-entropy()"=V248,
                "tBodyGyroMag-arCoeff()1"=V249,
                "tBodyGyroMag-arCoeff()2"=V250,
                "tBodyGyroMag-arCoeff()3"=V251,
                "tBodyGyroMag-arCoeff()4"=V252,
                "tBodyGyroJerkMag-mean()"=V253,
                "tBodyGyroJerkMag-std()"=V254,
                "tBodyGyroJerkMag-mad()"=V255,
                "tBodyGyroJerkMag-max()"=V256,
                "tBodyGyroJerkMag-min()"=V257,
                "tBodyGyroJerkMag-sma()"=V258,
                "tBodyGyroJerkMag-energy()"=V259,
                "tBodyGyroJerkMag-iqr()"=V260,
                "tBodyGyroJerkMag-entropy()"=V261,
                "tBodyGyroJerkMag-arCoeff()1"=V262,
                "tBodyGyroJerkMag-arCoeff()2"=V263,
                "tBodyGyroJerkMag-arCoeff()3"=V264,
                "tBodyGyroJerkMag-arCoeff()4"=V265,
                "fBodyAcc-mean()-X"=V266,
                "fBodyAcc-mean()-Y"=V267,
                "fBodyAcc-mean()-Z"=V268,
                "fBodyAcc-std()-X"=V269,
                "fBodyAcc-std()-Y"=V270,
                "fBodyAcc-std()-Z"=V271,
                "fBodyAcc-mad()-X"=V272,
                "fBodyAcc-mad()-Y"=V273,
                "fBodyAcc-mad()-Z"=V274,
                "fBodyAcc-max()-X"=V275,
                "fBodyAcc-max()-Y"=V276,
                "fBodyAcc-max()-Z"=V277,
                "fBodyAcc-min()-X"=V278,
                "fBodyAcc-min()-Y"=V279,
                "fBodyAcc-min()-Z"=V280,
                "fBodyAcc-sma()"=V281,
                "fBodyAcc-energy()-X"=V282,
                "fBodyAcc-energy()-Y"=V283,
                "fBodyAcc-energy()-Z"=V284,
                "fBodyAcc-iqr()-X"=V285,
                "fBodyAcc-iqr()-Y"=V286,
                "fBodyAcc-iqr()-Z"=V287,
                "fBodyAcc-entropy()-X"=V288,
                "fBodyAcc-entropy()-Y"=V289,
                "fBodyAcc-entropy()-Z"=V290,
                "fBodyAcc-maxInds-X"=V291,
                "fBodyAcc-maxInds-Y"=V292,
                "fBodyAcc-maxInds-Z"=V293,
                "fBodyAcc-meanFreq()-X"=V294,
                "fBodyAcc-meanFreq()-Y"=V295,
                "fBodyAcc-meanFreq()-Z"=V296,
                "fBodyAcc-skewness()-X"=V297,
                "fBodyAcc-kurtosis()-X"=V298,
                "fBodyAcc-skewness()-Y"=V299,
                "fBodyAcc-kurtosis()-Y"=V300,
                "fBodyAcc-skewness()-Z"=V301,
                "fBodyAcc-kurtosis()-Z"=V302,
                "fBodyAcc-bandsEnergy()-1,8 - 1"=V303,
                "fBodyAcc-bandsEnergy()-9,16 - 1"=V304,
                "fBodyAcc-bandsEnergy()-17,24 - 1"=V305,
                "fBodyAcc-bandsEnergy()-25,32 - 1"=V306,
                "fBodyAcc-bandsEnergy()-33,40 - 1"=V307,
                "fBodyAcc-bandsEnergy()-41,48 - 1"=V308,
                "fBodyAcc-bandsEnergy()-49,56 - 1"=V309,
                "fBodyAcc-bandsEnergy()-57,64 - 1"=V310,
                "fBodyAcc-bandsEnergy()-1,16 - 1"=V311,
                "fBodyAcc-bandsEnergy()-17,32 - 1"=V312,
                "fBodyAcc-bandsEnergy()-33,48 - 1"=V313,
                "fBodyAcc-bandsEnergy()-49,64 - 1"=V314,
                "fBodyAcc-bandsEnergy()-1,24 - 1"=V315,
                "fBodyAcc-bandsEnergy()-25,48 - 1"=V316,
                "fBodyAcc-bandsEnergy()-1,8 - 2"=V317,
                "fBodyAcc-bandsEnergy()-9,16 - 2"=V318,
                "fBodyAcc-bandsEnergy()-17,24 - 2"=V319,
                "fBodyAcc-bandsEnergy()-25,32 - 2"=V320,
                "fBodyAcc-bandsEnergy()-33,40 - 2"=V321,
                "fBodyAcc-bandsEnergy()-41,48 - 2"=V322,
                "fBodyAcc-bandsEnergy()-49,56 - 2"=V323,
                "fBodyAcc-bandsEnergy()-57,64 - 2"=V324,
               "fBodyAcc-bandsEnergy()-1,16 - 2"=V325,
                "fBodyAcc-bandsEnergy()-17,32 - 2"=V326,
                "fBodyAcc-bandsEnergy()-33,48 - 2"=V327,
                "fBodyAcc-bandsEnergy()-49,64 - 2"=V328,
                "fBodyAcc-bandsEnergy()-1,24 - 2"=V329,
                "fBodyAcc-bandsEnergy()-25,48 - 2"=V330,
                "fBodyAcc-bandsEnergy()-1,8 - 3"=V331,
                "fBodyAcc-bandsEnergy()-9,16 - 3"=V332,
                "fBodyAcc-bandsEnergy()-17,24 - 3"=V333,
                "fBodyAcc-bandsEnergy()-25,32 - 3"=V334,
                "fBodyAcc-bandsEnergy()-33,40 - 3"=V335,
                "fBodyAcc-bandsEnergy()-41,48 - 3"=V336,
                "fBodyAcc-bandsEnergy()-49,56 - 3"=V337,
                "fBodyAcc-bandsEnergy()-57,64 - 3"=V338,
                "fBodyAcc-bandsEnergy()-1,16 - 3"=V339,
                "fBodyAcc-bandsEnergy()-17,32 - 3"=V340,
                "fBodyAcc-bandsEnergy()-33,48 - 3"=V341,
                "fBodyAcc-bandsEnergy()-49,64 - 3"=V342,
                "fBodyAcc-bandsEnergy()-1,24 - 3"=V343,
                "fBodyAcc-bandsEnergy()-25,48 - 3"=V344,
                "fBodyAccJerk-mean()-X"=V345,
                "fBodyAccJerk-mean()-Y"=V346,
                "fBodyAccJerk-mean()-Z"=V347,
                "fBodyAccJerk-std()-X"=V348,
                "fBodyAccJerk-std()-Y"=V349,
                "fBodyAccJerk-std()-Z"=V350,
                "fBodyAccJerk-mad()-X"=V351,
                "fBodyAccJerk-mad()-Y"=V352,
                "fBodyAccJerk-mad()-Z"=V353,
                "fBodyAccJerk-max()-X"=V354,
                "fBodyAccJerk-max()-Y"=V355,
                "fBodyAccJerk-max()-Z"=V356,
                "fBodyAccJerk-min()-X"=V357,
                "fBodyAccJerk-min()-Y"=V358,
                "fBodyAccJerk-min()-Z"=V359,
                "fBodyAccJerk-sma()"=V360,
                "fBodyAccJerk-energy()-X"=V361,
                "fBodyAccJerk-energy()-Y"=V362,
                "fBodyAccJerk-energy()-Z"=V363,
                "fBodyAccJerk-iqr()-X"=V364,
                "fBodyAccJerk-iqr()-Y"=V365,
                "fBodyAccJerk-iqr()-Z"=V366,
                "fBodyAccJerk-entropy()-X"=V367,
                "fBodyAccJerk-entropy()-Y"=V368,
                "fBodyAccJerk-entropy()-Z"=V369,
                "fBodyAccJerk-maxInds-X"=V370,
                "fBodyAccJerk-maxInds-Y"=V371,
                "fBodyAccJerk-maxInds-Z"=V372,
                "fBodyAccJerk-meanFreq()-X"=V373,
                "fBodyAccJerk-meanFreq()-Y"=V374,
                "fBodyAccJerk-meanFreq()-Z"=V375,
                "fBodyAccJerk-skewness()-X"=V376,
                "fBodyAccJerk-kurtosis()-X"=V377,
                "fBodyAccJerk-skewness()-Y"=V378,
                "fBodyAccJerk-kurtosis()-Y"=V379,
                "fBodyAccJerk-skewness()-Z"=V380,
                "fBodyAccJerk-kurtosis()-Z"=V381,
                "fBodyAccJerk-bandsEnergy()-1,8-1"=V382,
                "fBodyAccJerk-bandsEnergy()-9,16-1"=V383,
                "fBodyAccJerk-bandsEnergy()-17,24-1"=V384,
                "fBodyAccJerk-bandsEnergy()-25,32-1"=V385,
                "fBodyAccJerk-bandsEnergy()-33,40-1"=V386,
                "fBodyAccJerk-bandsEnergy()-41,48-1"=V387,
                "fBodyAccJerk-bandsEnergy()-49,56-1"=V388,
                "fBodyAccJerk-bandsEnergy()-57,64-1"=V389,
                "fBodyAccJerk-bandsEnergy()-1,16-1"=V390,
                "fBodyAccJerk-bandsEnergy()-17,32-1"=V391,
                "fBodyAccJerk-bandsEnergy()-33,48-1"=V392,
                "fBodyAccJerk-bandsEnergy()-49,64-1"=V393,
                "fBodyAccJerk-bandsEnergy()-1,24-1"=V394,
                "fBodyAccJerk-bandsEnergy()-25,48-1"=V395,
                "fBodyAccJerk-bandsEnergy()-1,8-2"=V396,
                "fBodyAccJerk-bandsEnergy()-9,16-2"=V397,
                "fBodyAccJerk-bandsEnergy()-17,24-2"=V398,
                "fBodyAccJerk-bandsEnergy()-25,32-2"=V399,
                "fBodyAccJerk-bandsEnergy()-33,40-2"=V400,
                "fBodyAccJerk-bandsEnergy()-41,48-2"=V401,
                "fBodyAccJerk-bandsEnergy()-49,56-2"=V402,
                "fBodyAccJerk-bandsEnergy()-57,64-2"=V403,
                "fBodyAccJerk-bandsEnergy()-1,16-2"=V404,
                "fBodyAccJerk-bandsEnergy()-17,32-2"=V405,
                "fBodyAccJerk-bandsEnergy()-33,48-2"=V406,
                "fBodyAccJerk-bandsEnergy()-49,64-2"=V407,
                "fBodyAccJerk-bandsEnergy()-1,24-2"=V408,
                "fBodyAccJerk-bandsEnergy()-25,48-2"=V409,
                "fBodyAccJerk-bandsEnergy()-1,8-3"=V410,
                "fBodyAccJerk-bandsEnergy()-9,16-3"=V411,
                "fBodyAccJerk-bandsEnergy()-17,24-3"=V412,
                "fBodyAccJerk-bandsEnergy()-25,32-3"=V413,
                "fBodyAccJerk-bandsEnergy()-33,40-3"=V414,
                "fBodyAccJerk-bandsEnergy()-41,48-3"=V415,
                "fBodyAccJerk-bandsEnergy()-49,56-3"=V416,
                "fBodyAccJerk-bandsEnergy()-57,64-3"=V417,
                "fBodyAccJerk-bandsEnergy()-1,16-3"=V418,
                "fBodyAccJerk-bandsEnergy()-17,32-3"=V419,
                "fBodyAccJerk-bandsEnergy()-33,48-3"=V420,
                "fBodyAccJerk-bandsEnergy()-49,64-3"=V421,
                "fBodyAccJerk-bandsEnergy()-1,24-3"=V422,
                "fBodyAccJerk-bandsEnergy()-25,48-3"=V423,
                "fBodyGyro-mean()-X"=V424,
                "fBodyGyro-mean()-Y"=V425,
                "fBodyGyro-mean()-Z"=V426,
                "fBodyGyro-std()-X"=V427,
                "fBodyGyro-std()-Y"=V428,
                "fBodyGyro-std()-Z"=V429,
                "fBodyGyro-mad()-X"=V430,
                "fBodyGyro-mad()-Y"=V431,
                "fBodyGyro-mad()-Z"=V432,
                "fBodyGyro-max()-X"=V433,
                "fBodyGyro-max()-Y"=V434,
                "fBodyGyro-max()-Z"=V435,
                "fBodyGyro-min()-X"=V436,
                "fBodyGyro-min()-Y"=V437,
                "fBodyGyro-min()-Z"=V438,
                "fBodyGyro-sma()"=V439,
                "fBodyGyro-energy()-X"=V440,
                "fBodyGyro-energy()-Y"=V441,
                "fBodyGyro-energy()-Z"=V442,
                "fBodyGyro-iqr()-X"=V443,
                "fBodyGyro-iqr()-Y"=V444,
                "fBodyGyro-iqr()-Z"=V445,
                "fBodyGyro-entropy()-X"=V446,
                "fBodyGyro-entropy()-Y"=V447,
                "fBodyGyro-entropy()-Z"=V448,
                "fBodyGyro-maxInds-X"=V449,
                "fBodyGyro-maxInds-Y"=V450,
                "fBodyGyro-maxInds-Z"=V451,
                "fBodyGyro-meanFreq()-X"=V452,
                "fBodyGyro-meanFreq()-Y"=V453,
                "fBodyGyro-meanFreq()-Z"=V454,
                "fBodyGyro-skewness()-X"=V455,
                "fBodyGyro-kurtosis()-X"=V456,
                "fBodyGyro-skewness()-Y"=V457,
                "fBodyGyro-kurtosis()-Y"=V458,
                "fBodyGyro-skewness()-Z"=V459,
                "fBodyGyro-kurtosis()-Z"=V460,
                "fBodyGyro-bandsEnergy()-1,8-1"=V461,
                "fBodyGyro-bandsEnergy()-9,16-1"=V462,
                "fBodyGyro-bandsEnergy()-17,24-1"=V463,
                "fBodyGyro-bandsEnergy()-25,32-1"=V464,
                "fBodyGyro-bandsEnergy()-33,40-1"=V465,
                "fBodyGyro-bandsEnergy()-41,48-1"=V466,
                "fBodyGyro-bandsEnergy()-49,56-1"=V467,
                "fBodyGyro-bandsEnergy()-57,64-1"=V468,
                "fBodyGyro-bandsEnergy()-1,16-1"=V469,
                "fBodyGyro-bandsEnergy()-17,32-1"=V470,
                "fBodyGyro-bandsEnergy()-33,48-1"=V471,
                "fBodyGyro-bandsEnergy()-49,64-1"=V472,
                "fBodyGyro-bandsEnergy()-1,24-1"=V473,
                "fBodyGyro-bandsEnergy()-25,48-1"=V474,
                "fBodyGyro-bandsEnergy()-1,8-2"=V475,
                "fBodyGyro-bandsEnergy()-9,16-2"=V476,
                "fBodyGyro-bandsEnergy()-17,24-2"=V477,
                "fBodyGyro-bandsEnergy()-25,32-2"=V478,
                "fBodyGyro-bandsEnergy()-33,40-2"=V479,
                "fBodyGyro-bandsEnergy()-41,48-2"=V480,
                "fBodyGyro-bandsEnergy()-49,56-2"=V481,
                "fBodyGyro-bandsEnergy()-57,64-2"=V482,
                "fBodyGyro-bandsEnergy()-1,16-2"=V483,
                "fBodyGyro-bandsEnergy()-17,32-2"=V484,
                "fBodyGyro-bandsEnergy()-33,48-2"=V485,
                "fBodyGyro-bandsEnergy()-49,64-2"=V486,
                "fBodyGyro-bandsEnergy()-1,24-2"=V487,
                "fBodyGyro-bandsEnergy()-25,48-2"=V488,
                "fBodyGyro-bandsEnergy()-1,8-3"=V489,
                "fBodyGyro-bandsEnergy()-9,16-3"=V490,
                "fBodyGyro-bandsEnergy()-17,24-3"=V491,
                "fBodyGyro-bandsEnergy()-25,32-3"=V492,
                "fBodyGyro-bandsEnergy()-33,40-3"=V493,
                "fBodyGyro-bandsEnergy()-41,48-3"=V494,
                "fBodyGyro-bandsEnergy()-49,56-3"=V495,
                "fBodyGyro-bandsEnergy()-57,64-3"=V496,
                "fBodyGyro-bandsEnergy()-1,16-3"=V497,
                "fBodyGyro-bandsEnergy()-17,32-3"=V498,
                "fBodyGyro-bandsEnergy()-33,48-3"=V499,
                "fBodyGyro-bandsEnergy()-49,64-3"=V500,
                "fBodyGyro-bandsEnergy()-1,24-3"=V501,
                "fBodyGyro-bandsEnergy()-25,48-3"=V502,
                "fBodyAccMag-mean()"=V503,
                "fBodyAccMag-std()"=V504,
                "fBodyAccMag-mad()"=V505,
                "fBodyAccMag-max()"=V506,
                "fBodyAccMag-min()"=V507,
                "fBodyAccMag-sma()"=V508,
                "fBodyAccMag-energy()"=V509,
                "fBodyAccMag-iqr()"=V510,
                "fBodyAccMag-entropy()"=V511,
                "fBodyAccMag-maxInds"=V512,
                "fBodyAccMag-meanFreq()"=V513,
                "fBodyAccMag-skewness()"=V514,
                "fBodyAccMag-kurtosis()"=V515,
                "fBodyBodyAccJerkMag-mean()"=V516,
                "fBodyBodyAccJerkMag-std()"=V517,
                "fBodyBodyAccJerkMag-mad()"=V518,
                "fBodyBodyAccJerkMag-max()"=V519,
                "fBodyBodyAccJerkMag-min()"=V520,
                "fBodyBodyAccJerkMag-sma()"=V521,
                "fBodyBodyAccJerkMag-energy()"=V522,
                "fBodyBodyAccJerkMag-iqr()"=V523,
                "fBodyBodyAccJerkMag-entropy()"=V524,
                "fBodyBodyAccJerkMag-maxInds"=V525,
                "fBodyBodyAccJerkMag-meanFreq()"=V526,
                "fBodyBodyAccJerkMag-skewness()"=V527,
                "fBodyBodyAccJerkMag-kurtosis()"=V528,
                "fBodyBodyGyroMag-mean()"=V529,
                "fBodyBodyGyroMag-std()"=V530,
                "fBodyBodyGyroMag-mad()"=V531,
                "fBodyBodyGyroMag-max()"=V532,
                "fBodyBodyGyroMag-min()"=V533,
                "fBodyBodyGyroMag-sma()"=V534,
                "fBodyBodyGyroMag-energy()"=V535,
                "fBodyBodyGyroMag-iqr()"=V536,
                "fBodyBodyGyroMag-entropy()"=V537,
                "fBodyBodyGyroMag-maxInds"=V538,
                "fBodyBodyGyroMag-meanFreq()"=V539,
                "fBodyBodyGyroMag-skewness()"=V540,
                "fBodyBodyGyroMag-kurtosis()"=V541,
                "fBodyBodyGyroJerkMag-mean()"=V542,
                "fBodyBodyGyroJerkMag-std()"=V543,
                "fBodyBodyGyroJerkMag-mad()"=V544,
                "fBodyBodyGyroJerkMag-max()"=V545,
                "fBodyBodyGyroJerkMag-min()"=V546,
                "fBodyBodyGyroJerkMag-sma()"=V547,
                "fBodyBodyGyroJerkMag-energy()"=V548,
                "fBodyBodyGyroJerkMag-iqr()"=V549,
                "fBodyBodyGyroJerkMag-entropy()"=V550,
                "fBodyBodyGyroJerkMag-maxInds"=V551,
                "fBodyBodyGyroJerkMag-meanFreq()"=V552,
                "fBodyBodyGyroJerkMag-skewness()"=V553,
                "fBodyBodyGyroJerkMag-kurtosis()"=V554,
                "angle(tBodyAccMean,gravity)"=V555,
                "angle(tBodyAccJerkMean),gravityMean)"=V556,
"angle(tBodyGyroMean,gravityMean)"=V557,
"angle(tBodyGyroJerkMean,gravityMean)"=V558,
"angle(X,gravityMean)"=V559,
"angle(Y,gravityMean)"=V560,
"angle(Z,gravityMean)"=V561
)

#keep only columns with mean or standard deviation
comboMean <- combo [ , grepl("mean", names(combo))]
comboStd <- combo [ , grepl("std", names(combo))]
comboMeanStd <- cbind(comboMean, comboStd)

#create new data set that contains the average of each column
write.table(colMeans(comboMeanStd),row.names =  FALSE)