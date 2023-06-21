.class public final Lcom/kingroot/kinguser/bwk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private aKT:J

.field private action:I

.field private bJE:I

.field private bQZ:I

.field private bRa:J

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lcom/kingroot/kinguser/bwk$a;->bQZ:I

    .line 74
    iput v0, p0, Lcom/kingroot/kinguser/bwk$a;->bJE:I

    .line 75
    iput v0, p0, Lcom/kingroot/kinguser/bwk$a;->action:I

    .line 76
    sget-wide v0, Lcom/kingroot/kinguser/bwr;->bSs:J

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/bwk$a;->bRa:J

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bwk$a;->aKT:J

    .line 81
    const/4 v0, -0x1

    if-gt p2, v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scenes invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bwk$a;->context:Landroid/content/Context;

    .line 85
    iput p2, p0, Lcom/kingroot/kinguser/bwk$a;->bJE:I

    .line 86
    iput p3, p0, Lcom/kingroot/kinguser/bwk$a;->action:I

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IILcom/kingroot/kinguser/bwk$1;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bwk$a;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bwk$a;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/kingroot/kinguser/bwk$a;->bQZ:I

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bwk$a;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/kingroot/kinguser/bwk$a;->bJE:I

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bwk$a;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/kingroot/kinguser/bwk$a;->action:I

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bwk$a;)J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/kingroot/kinguser/bwk$a;->bRa:J

    return-wide v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bwk$a;)J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/kingroot/kinguser/bwk$a;->aKT:J

    return-wide v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bwk$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bwk$a;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public aiN()Lcom/kingroot/kinguser/bwk;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/kingroot/kinguser/bwk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bwk;-><init>(Lcom/kingroot/kinguser/bwk$a;Lcom/kingroot/kinguser/bwk$1;)V

    return-object v0
.end method

.method public cJ(J)Lcom/kingroot/kinguser/bwk$a;
    .locals 5

    .prologue
    const-wide/16 v2, 0xc

    .line 98
    sget-wide v0, Lcom/kingroot/kinguser/bwr;->bSv:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 99
    sget-wide v0, Lcom/kingroot/kinguser/bwr;->bSv:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/bwk$a;->bRa:J

    .line 105
    :goto_0
    return-object p0

    .line 100
    :cond_0
    sget-wide v0, Lcom/kingroot/kinguser/bwr;->bSs:J

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 101
    sget-wide v0, Lcom/kingroot/kinguser/bwr;->bSs:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/bwk$a;->bRa:J

    goto :goto_0

    .line 103
    :cond_1
    iput-wide p1, p0, Lcom/kingroot/kinguser/bwk$a;->bRa:J

    goto :goto_0
.end method

.method public kK(I)Lcom/kingroot/kinguser/bwk$a;
    .locals 3

    .prologue
    .line 90
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iput p1, p0, Lcom/kingroot/kinguser/bwk$a;->bQZ:I

    .line 94
    return-object p0
.end method
