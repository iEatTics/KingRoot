.class public Lqqpimaccount/AccountInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lqqpimaccount/AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private loginRefreshKey:Ljava/lang/String;

.field private mAccount:Ljava/lang/String;

.field private mAccountType:I

.field private mGender:Lqqpimaccount/GenderTypeEnum;

.field private mLoginKey:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mPortraitURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqqpimaccount/AccountInfo$1;

    invoke-direct {v0}, Lqqpimaccount/AccountInfo$1;-><init>()V

    sput-object v0, Lqqpimaccount/AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lqqpimaccount/AccountInfo;->mAccountType:I

    iput-object v1, p0, Lqqpimaccount/AccountInfo;->mLoginKey:Ljava/lang/String;

    iput-object v1, p0, Lqqpimaccount/AccountInfo;->mAccount:Ljava/lang/String;

    iput-object v1, p0, Lqqpimaccount/AccountInfo;->mNickName:Ljava/lang/String;

    iput-object v1, p0, Lqqpimaccount/AccountInfo;->mPortraitURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lqqpimaccount/AccountInfo;->mAccountType:I

    iput-object v1, p0, Lqqpimaccount/AccountInfo;->mLoginKey:Ljava/lang/String;

    iput-object v1, p0, Lqqpimaccount/AccountInfo;->mAccount:Ljava/lang/String;

    iput-object v1, p0, Lqqpimaccount/AccountInfo;->mNickName:Ljava/lang/String;

    iput-object v1, p0, Lqqpimaccount/AccountInfo;->mPortraitURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqqpimaccount/AccountInfo;->loginRefreshKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lqqpimaccount/AccountInfo;->mAccountType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqqpimaccount/AccountInfo;->mLoginKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqqpimaccount/AccountInfo;->mAccount:Ljava/lang/String;

    invoke-static {}, Lqqpimaccount/GenderTypeEnum;->values()[Lqqpimaccount/GenderTypeEnum;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lqqpimaccount/AccountInfo;->mGender:Lqqpimaccount/GenderTypeEnum;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqqpimaccount/AccountInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqqpimaccount/AccountInfo;->mPortraitURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    iget v0, p0, Lqqpimaccount/AccountInfo;->mAccountType:I

    return v0
.end method

.method public getGender()Lqqpimaccount/GenderTypeEnum;
    .locals 1

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mGender:Lqqpimaccount/GenderTypeEnum;

    return-object v0
.end method

.method public getLoginKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mLoginKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginRefreshKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->loginRefreshKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mPortraitURL:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqqpimaccount/AccountInfo;->mAccount:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    iput p1, p0, Lqqpimaccount/AccountInfo;->mAccountType:I

    return-void
.end method

.method public setGender(Lqqpimaccount/GenderTypeEnum;)V
    .locals 0

    iput-object p1, p0, Lqqpimaccount/AccountInfo;->mGender:Lqqpimaccount/GenderTypeEnum;

    return-void
.end method

.method public setLoginKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqqpimaccount/AccountInfo;->mLoginKey:Ljava/lang/String;

    return-void
.end method

.method public setLoginRefreshKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqqpimaccount/AccountInfo;->loginRefreshKey:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqqpimaccount/AccountInfo;->mNickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqqpimaccount/AccountInfo;->mPortraitURL:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->loginRefreshKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lqqpimaccount/AccountInfo;->mAccountType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mLoginKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mGender:Lqqpimaccount/GenderTypeEnum;

    invoke-virtual {v0}, Lqqpimaccount/GenderTypeEnum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lqqpimaccount/AccountInfo;->mPortraitURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
