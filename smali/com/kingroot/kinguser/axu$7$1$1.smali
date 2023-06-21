.class Lcom/kingroot/kinguser/axu$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbZ:Lcom/kingroot/kinguser/axu$7$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu$7$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$7$1$1;->bbZ:Lcom/kingroot/kinguser/axu$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$7$1$1;->bbZ:Lcom/kingroot/kinguser/axu$7$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu$7$1;->bbY:Lcom/kingroot/kinguser/axu$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu$7;->bbX:Lcom/kingroot/kinguser/axu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/kingroot/kinguser/axu;->a(IZZ)V

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$7$1$1;->bbZ:Lcom/kingroot/kinguser/axu$7$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu$7$1;->bbY:Lcom/kingroot/kinguser/axu$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu$7;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/axu;->cW(Z)V

    .line 99
    return-void
.end method
