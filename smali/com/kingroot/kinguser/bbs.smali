.class public Lcom/kingroot/kinguser/bbs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bbs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile bfF:Lcloudsdk/ext/kr/RootInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/bbs$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbs$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbs;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WD()Lcom/kingroot/kinguser/bbs;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/bbs;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bbs;

    return-object v0
.end method

.method public static b(Lcloudsdk/ext/kr/RootExtInfo;)Z
    .locals 1

    .prologue
    .line 33
    if-eqz p0, :cond_0

    iget v0, p0, Lcloudsdk/ext/kr/RootExtInfo;->useTime:I

    if-lez v0, :cond_0

    iget v0, p0, Lcloudsdk/ext/kr/RootExtInfo;->succRate:I

    if-lez v0, :cond_0

    iget v0, p0, Lcloudsdk/ext/kr/RootExtInfo;->succUsers:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public WE()Lcloudsdk/ext/kr/RootInfo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bbs;->bfF:Lcloudsdk/ext/kr/RootInfo;

    return-object v0
.end method

.method public c(Lcloudsdk/ext/kr/RootInfo;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/bbs;->bfF:Lcloudsdk/ext/kr/RootInfo;

    .line 50
    return-void
.end method
