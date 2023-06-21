.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atm;
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
    .line 234
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;

    invoke-direct {v0, p0, p1, p4, p5}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method
