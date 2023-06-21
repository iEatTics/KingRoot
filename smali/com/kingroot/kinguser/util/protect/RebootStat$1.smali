.class final Lcom/kingroot/kinguser/util/protect/RebootStat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/util/protect/RebootStat;
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
        "Lcom/kingroot/kinguser/util/protect/RebootStat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aO(Landroid/os/Parcel;)Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/kingroot/kinguser/util/protect/RebootStat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/util/protect/RebootStat;-><init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/util/protect/RebootStat$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/util/protect/RebootStat$1;->aO(Landroid/os/Parcel;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    return-object v0
.end method

.method public iQ(I)[Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 1

    .prologue
    .line 181
    new-array v0, p1, [Lcom/kingroot/kinguser/util/protect/RebootStat;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/util/protect/RebootStat$1;->iQ(I)[Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    return-object v0
.end method
