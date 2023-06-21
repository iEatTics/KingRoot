.class public Lcom/kingroot/kinguser/hz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/hz$a;
    }
.end annotation


# instance fields
.field private ra:Ljava/lang/String;

.field private rb:Ljava/lang/String;

.field private rc:Ljava/lang/String;

.field private rd:Ljava/lang/String;

.field private re:Z


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/hz$a;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/kingroot/kinguser/hz$a;->a(Lcom/kingroot/kinguser/hz$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/hz;->ra:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/kingroot/kinguser/hz$a;->b(Lcom/kingroot/kinguser/hz$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/hz;->rb:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/kingroot/kinguser/hz$a;->c(Lcom/kingroot/kinguser/hz$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/hz;->rc:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/kingroot/kinguser/hz$a;->d(Lcom/kingroot/kinguser/hz$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/hz;->rd:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/kingroot/kinguser/hz$a;->e(Lcom/kingroot/kinguser/hz$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/hz;->re:Z

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/hz$a;Lcom/kingroot/kinguser/ia;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/hz;-><init>(Lcom/kingroot/kinguser/hz$a;)V

    return-void
.end method

.method public static br()Lcom/kingroot/kinguser/hz$a;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/kingroot/kinguser/hz$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/hz$a;-><init>(Lcom/kingroot/kinguser/ia;)V

    return-object v0
.end method


# virtual methods
.method public bn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/hz;->rb:Ljava/lang/String;

    return-object v0
.end method

.method public bo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/hz;->rc:Ljava/lang/String;

    return-object v0
.end method

.method public bp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/hz;->rd:Ljava/lang/String;

    return-object v0
.end method

.method public bq()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/kingroot/kinguser/hz;->re:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/hz;->ra:Ljava/lang/String;

    return-object v0
.end method
