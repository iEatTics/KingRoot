.class public Lcom/kingroot/kinguser/ir;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ei:I

.field public mName:Ljava/lang/String;

.field public ra:Ljava/lang/String;

.field protected sn:I

.field public so:Z

.field public sp:I

.field public sq:Ljava/lang/String;

.field public sr:J

.field public ss:J

.field public st:F

.field public su:I

.field public sv:Lcom/kingroot/kinguser/mg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ir;->so:Z

    .line 72
    const/4 v0, -0x2

    iput v0, p0, Lcom/kingroot/kinguser/ir;->sp:I

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/ir;->sr:J

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ir;->ei:I

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/ir;->sq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ir;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
