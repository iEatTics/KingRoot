.class final Lcom/kingroot/kinguser/service/KingrootAppItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/service/KingrootAppItem;
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
        "Lcom/kingroot/kinguser/service/KingrootAppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aK(Landroid/os/Parcel;)Lcom/kingroot/kinguser/service/KingrootAppItem;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/kingroot/kinguser/service/KingrootAppItem;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/service/KingrootAppItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/service/KingrootAppItem$1;->aK(Landroid/os/Parcel;)Lcom/kingroot/kinguser/service/KingrootAppItem;

    move-result-object v0

    return-object v0
.end method

.method public im(I)[Lcom/kingroot/kinguser/service/KingrootAppItem;
    .locals 1

    .prologue
    .line 73
    new-array v0, p1, [Lcom/kingroot/kinguser/service/KingrootAppItem;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/service/KingrootAppItem$1;->im(I)[Lcom/kingroot/kinguser/service/KingrootAppItem;

    move-result-object v0

    return-object v0
.end method
