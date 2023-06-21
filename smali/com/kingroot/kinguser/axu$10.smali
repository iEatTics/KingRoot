.class Lcom/kingroot/kinguser/axu$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->Qv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$10;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$10;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->i(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$10;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->i(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/agi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agi;->notifyDataSetChanged()V

    .line 232
    :cond_0
    return-void
.end method
