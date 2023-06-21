.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aog;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aog;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 171
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method
