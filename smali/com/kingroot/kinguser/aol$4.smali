.class Lcom/kingroot/kinguser/aol$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aol;->Kd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aol;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aol;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/kingroot/kinguser/aol$4;->this$0:Lcom/kingroot/kinguser/aol;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/aol$4;->this$0:Lcom/kingroot/kinguser/aol;

    invoke-static {v0}, Lcom/kingroot/kinguser/aol;->b(Lcom/kingroot/kinguser/aol;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aol$4;->this$0:Lcom/kingroot/kinguser/aol;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aol;->Ka()V

    goto :goto_0
.end method
