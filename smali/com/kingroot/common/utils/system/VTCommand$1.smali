.class final Lcom/kingroot/common/utils/system/VTCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/utils/system/VTCommand;
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
        "Lcom/kingroot/common/utils/system/VTCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cg(I)[Lcom/kingroot/common/utils/system/VTCommand;
    .locals 1

    .prologue
    .line 90
    new-array v0, p1, [Lcom/kingroot/common/utils/system/VTCommand;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/kingroot/common/utils/system/VTCommand$1;->u(Landroid/os/Parcel;)Lcom/kingroot/common/utils/system/VTCommand;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/kingroot/common/utils/system/VTCommand$1;->cg(I)[Lcom/kingroot/common/utils/system/VTCommand;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/os/Parcel;)Lcom/kingroot/common/utils/system/VTCommand;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v0, p1}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
