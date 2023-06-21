.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 1

    .prologue
    .line 536
    if-eqz p1, :cond_0

    .line 537
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 547
    :cond_0
    return-void
.end method
