.class final Lmeri/pluginsdk/IPiInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeri/pluginsdk/IPiInfo;
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
        "Lmeri/pluginsdk/IPiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bf(Landroid/os/Parcel;)Lmeri/pluginsdk/IPiInfo;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lmeri/pluginsdk/IPiInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmeri/pluginsdk/IPiInfo;-><init>(Landroid/os/Parcel;Lmeri/pluginsdk/IPiInfo$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lmeri/pluginsdk/IPiInfo$1;->bf(Landroid/os/Parcel;)Lmeri/pluginsdk/IPiInfo;

    move-result-object v0

    return-object v0
.end method

.method public kS(I)[Lmeri/pluginsdk/IPiInfo;
    .locals 1

    .prologue
    .line 257
    new-array v0, p1, [Lmeri/pluginsdk/IPiInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lmeri/pluginsdk/IPiInfo$1;->kS(I)[Lmeri/pluginsdk/IPiInfo;

    move-result-object v0

    return-object v0
.end method
