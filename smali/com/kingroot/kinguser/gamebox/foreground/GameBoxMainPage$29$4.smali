.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;->onShowNormal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOV:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;)V
    .locals 0

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$4;->aOV:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$4;->aOV:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->d(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->fK(I)V

    .line 1434
    return-void
.end method
