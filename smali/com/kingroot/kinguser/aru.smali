.class public Lcom/kingroot/kinguser/aru;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aMh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aMi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RiskRootProcRecycler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aru;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aru;->aMh:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aru;->aMi:Ljava/util/Set;

    return-void
.end method

.method private Nu()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/bca;->Xa()Lcom/kingroot/kinguser/bca;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bca;->hg(I)Ljava/util/List;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private Nv()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/bca;->Xa()Lcom/kingroot/kinguser/bca;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bca;->hh(I)Ljava/util/List;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public MG()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/aru;->Nu()Ljava/util/Set;

    move-result-object v1

    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/aru;->Nv()Ljava/util/Set;

    move-result-object v2

    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/bca;->Xa()Lcom/kingroot/kinguser/bca;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bca;->Xb()Ljava/util/List;

    move-result-object v3

    .line 38
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bbz;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 58
    iput-object v1, p0, Lcom/kingroot/kinguser/aru;->aMh:Ljava/util/Set;

    .line 59
    iput-object v2, p0, Lcom/kingroot/kinguser/aru;->aMi:Ljava/util/Set;

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MH()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/aru;->aMh:Ljava/util/Set;

    iget-object v1, p0, Lcom/kingroot/kinguser/aru;->aMi:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbz;->c(Ljava/util/Set;Ljava/util/Set;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method
