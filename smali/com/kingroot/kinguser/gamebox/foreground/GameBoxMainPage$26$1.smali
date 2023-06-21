.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOU:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26;

.field final synthetic awy:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26$1;->aOU:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26;

    iput p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26$1;->awy:I

    iput-object p3, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26$1;->aOU:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->w(Lcom/kingroot/kinguser/atm;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26$1;->awy:I

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 1325
    return-void
.end method
