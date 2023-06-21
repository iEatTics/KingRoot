.class public Lcom/kingroot/kinguser/bwk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bwk$a;
    }
.end annotation


# instance fields
.field private aKT:J

.field private action:I

.field private bJE:I

.field private bQZ:I

.field private bRa:J

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bwk$a;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/kingroot/kinguser/bwk$a;->a(Lcom/kingroot/kinguser/bwk$a;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bwk;->bQZ:I

    .line 56
    invoke-static {p1}, Lcom/kingroot/kinguser/bwk$a;->b(Lcom/kingroot/kinguser/bwk$a;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bwk;->bJE:I

    .line 57
    invoke-static {p1}, Lcom/kingroot/kinguser/bwk$a;->c(Lcom/kingroot/kinguser/bwk$a;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bwk;->action:I

    .line 58
    invoke-static {p1}, Lcom/kingroot/kinguser/bwk$a;->d(Lcom/kingroot/kinguser/bwk$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bwk;->bRa:J

    .line 59
    invoke-static {p1}, Lcom/kingroot/kinguser/bwk$a;->e(Lcom/kingroot/kinguser/bwk$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bwk;->aKT:J

    .line 60
    invoke-static {p1}, Lcom/kingroot/kinguser/bwk$a;->f(Lcom/kingroot/kinguser/bwk$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bwk;->context:Landroid/content/Context;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bwk$a;Lcom/kingroot/kinguser/bwk$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bwk;-><init>(Lcom/kingroot/kinguser/bwk$a;)V

    return-void
.end method

.method public static b(Landroid/content/Context;II)Lcom/kingroot/kinguser/bwk$a;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/kingroot/kinguser/bwk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/kingroot/kinguser/bwk$a;-><init>(Landroid/content/Context;IILcom/kingroot/kinguser/bwk$1;)V

    return-object v0
.end method


# virtual methods
.method public aab()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/bwk;->bQZ:I

    return v0
.end method

.method public aiK()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/bwk;->bJE:I

    return v0
.end method

.method public aiL()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/kingroot/kinguser/bwk;->bRa:J

    return-wide v0
.end method

.method public aiM()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/kingroot/kinguser/bwk;->aKT:J

    return-wide v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/bwk;->action:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bwk;->context:Landroid/content/Context;

    return-object v0
.end method
