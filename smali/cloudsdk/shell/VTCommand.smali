.class public Lcloudsdk/shell/VTCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TIMEOUT_DEFAULT:J = 0x9c40L

.field public static final TIMEOUT_NONE:J


# instance fields
.field public final mCmdFlag:Ljava/lang/String;

.field public final mCmdValue:Ljava/lang/String;

.field public final mTimeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcloudsdk/shell/VTCommand;->mCmdFlag:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcloudsdk/shell/VTCommand;->mCmdValue:Ljava/lang/String;

    .line 40
    const-wide/32 v0, 0x9c40

    iput-wide v0, p0, Lcloudsdk/shell/VTCommand;->mTimeout:J

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcloudsdk/shell/VTCommand;->mCmdFlag:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcloudsdk/shell/VTCommand;->mCmdValue:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lcloudsdk/shell/VTCommand;->mTimeout:J

    .line 53
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcloudsdk/shell/VTCommand;->mCmdFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcloudsdk/shell/VTCommand;->mCmdFlag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcloudsdk/shell/VTCommand;->mCmdValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcloudsdk/shell/VTCommand;->mCmdValue:Ljava/lang/String;

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
