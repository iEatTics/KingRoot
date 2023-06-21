.class final Lcom/kingroot/kinguser/advance/install/aidl/CheckResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;
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
        "Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult$1;->C(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;

    move-result-object v0

    return-object v0
.end method

.method public de(I)[Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;
    .locals 1

    .prologue
    .line 33
    new-array v0, p1, [Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/install/aidl/CheckResult$1;->de(I)[Lcom/kingroot/kinguser/advance/install/aidl/CheckResult;

    move-result-object v0

    return-object v0
.end method
