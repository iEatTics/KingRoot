.class public Lcom/kingroot/kinguser/vj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public BH:F

.field public KS:Z

.field public KT:Ljava/lang/String;

.field public KU:J

.field public KV:Lcom/kingroot/kinguser/wo;

.field public KW:Ljava/lang/String;

.field public mErrorCode:I

.field public mName:Ljava/lang/String;

.field public mSize:J

.field public mSpeed:I

.field public mState:I

.field public mType:I

.field public ra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/vj;->KS:Z

    .line 71
    const/4 v0, -0x2

    iput v0, p0, Lcom/kingroot/kinguser/vj;->mState:I

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/vj;->mSize:J

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/vj;->mErrorCode:I

    return-void
.end method
