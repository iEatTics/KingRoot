.class public Lcom/kingroot/common/utils/system/VTCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/common/utils/system/VTCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCmdFlag:Ljava/lang/String;

.field public final mCmdValue:Ljava/lang/String;

.field public final mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/kingroot/common/utils/system/VTCommand$1;

    invoke-direct {v0}, Lcom/kingroot/common/utils/system/VTCommand$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/utils/system/VTCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    .line 41
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    .line 53
    iput-wide p3, p0, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    return-void
.end method
