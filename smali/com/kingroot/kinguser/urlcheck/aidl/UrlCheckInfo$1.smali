.class final Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;
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
        "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aL(Landroid/os/Parcel;)Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo$1;->aL(Landroid/os/Parcel;)Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;

    move-result-object v0

    return-object v0
.end method

.method public iB(I)[Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;
    .locals 1

    .prologue
    .line 44
    new-array v0, p1, [Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo$1;->iB(I)[Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckInfo;

    move-result-object v0

    return-object v0
.end method
