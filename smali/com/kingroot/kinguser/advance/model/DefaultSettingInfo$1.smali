.class final Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo$1;->F(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    move-result-object v0

    return-object v0
.end method

.method public do(I)[Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;
    .locals 1

    .prologue
    .line 51
    new-array v0, p1, [Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo$1;->do(I)[Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    move-result-object v0

    return-object v0
.end method
