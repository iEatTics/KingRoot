.class final Lcom/kingroot/kinguser/ai/AntiInjectLogModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/AntiInjectLogModel;
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
        "Lcom/kingroot/kinguser/ai/AntiInjectLogModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public L(Landroid/os/Parcel;)Lcom/kingroot/kinguser/ai/AntiInjectLogModel;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;-><init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/ai/AntiInjectLogModel$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ai/AntiInjectLogModel$1;->L(Landroid/os/Parcel;)Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    move-result-object v0

    return-object v0
.end method

.method public du(I)[Lcom/kingroot/kinguser/ai/AntiInjectLogModel;
    .locals 1

    .prologue
    .line 160
    new-array v0, p1, [Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ai/AntiInjectLogModel$1;->du(I)[Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    move-result-object v0

    return-object v0
.end method
