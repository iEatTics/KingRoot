.class final Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;
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
        "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aN(Landroid/os/Parcel;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog$1;->aN(Landroid/os/Parcel;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v0

    return-object v0
.end method

.method public iD(I)[Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;
    .locals 1

    .prologue
    .line 112
    new-array v0, p1, [Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog$1;->iD(I)[Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v0

    return-object v0
.end method
