.class public Lcom/kingroot/kinguser/arj;
.super Lcom/kingroot/kinguser/ari;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


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

    const-string v1, "_AntiAcquireRootProject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/arj;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/kinguser/ari;-><init>()V

    return-void
.end method


# virtual methods
.method protected MG()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EH()Z

    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ari;->MG()Z

    move-result v0

    goto :goto_0
.end method

.method protected MH()Z
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EI()V

    .line 34
    invoke-super {p0}, Lcom/kingroot/kinguser/ari;->MH()Z

    move-result v0

    return v0
.end method
