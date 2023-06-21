.class final Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;
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
        "Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ay(Landroid/os/Parcel;)Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo$1;->ay(Landroid/os/Parcel;)Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;

    move-result-object v0

    return-object v0
.end method

.method public gr(I)[Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo$1;->gr(I)[Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;

    move-result-object v0

    return-object v0
.end method
