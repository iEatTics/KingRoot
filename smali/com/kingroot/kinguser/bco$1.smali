.class Lcom/kingroot/kinguser/bco$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bco;->a(ZJJJJIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bhv:Lcom/kingroot/kinguser/bco;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bco;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/kingroot/kinguser/bco$1;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 399
    iget-object v0, p0, Lcom/kingroot/kinguser/bco$1;->bhv:Lcom/kingroot/kinguser/bco;

    const v1, 0x7f0701bb

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bco;->a(Lcom/kingroot/kinguser/bco;I)Ljava/lang/String;

    move-result-object v0

    .line 400
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/kinguser/bco$1;->bhv:Lcom/kingroot/kinguser/bco;

    .line 401
    invoke-static {v3}, Lcom/kingroot/kinguser/bco;->a(Lcom/kingroot/kinguser/bco;)J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 400
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/kingroot/kinguser/bco$1;->bhv:Lcom/kingroot/kinguser/bco;

    invoke-static {v1}, Lcom/kingroot/kinguser/bco;->b(Lcom/kingroot/kinguser/bco;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method
