.class abstract Lcom/kingroot/kinguser/ari;
.super Lcom/kingroot/kinguser/arl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aLM:Lcom/kingroot/kinguser/art;

.field private final aLN:Lcom/kingroot/kinguser/aru;

.field private aLO:Z

.field private aLP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AbsAntiAcquireRootProject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ari;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/kinguser/arl;-><init>()V

    .line 15
    new-instance v0, Lcom/kingroot/kinguser/art;

    invoke-direct {v0}, Lcom/kingroot/kinguser/art;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ari;->aLM:Lcom/kingroot/kinguser/art;

    .line 16
    new-instance v0, Lcom/kingroot/kinguser/aru;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aru;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ari;->aLN:Lcom/kingroot/kinguser/aru;

    return-void
.end method


# virtual methods
.method protected MG()Z
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/ari;->aLN:Lcom/kingroot/kinguser/aru;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aru;->MG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ari;->aLO:Z

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/ari;->aLM:Lcom/kingroot/kinguser/art;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/art;->gp(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ari;->aLP:Z

    .line 33
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ari;->aLO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/ari;->aLP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected MH()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ari;->aLO:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/ari;->aLN:Lcom/kingroot/kinguser/aru;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aru;->MH()Z

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ari;->aLP:Z

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/ari;->aLM:Lcom/kingroot/kinguser/art;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/art;->MH()Z

    .line 48
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
