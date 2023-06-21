.class public abstract Lcom/kingroot/kinguser/auo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auo;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/auo;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/kingroot/kinguser/auo$a;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/auo;Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/auo$a;-><init>(Lcom/kingroot/kinguser/auo;)V

    return-void
.end method


# virtual methods
.method public abstract onFinish(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation
.end method
