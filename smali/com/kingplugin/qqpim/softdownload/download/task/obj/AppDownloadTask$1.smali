.class final Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;
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
        "Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-direct {v0, p1}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;
    .locals 1

    .prologue
    .line 118
    new-array v0, p1, [Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask$1;->newArray(I)[Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v0

    return-object v0
.end method
