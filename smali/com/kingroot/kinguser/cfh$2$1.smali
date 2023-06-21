.class Lcom/kingroot/kinguser/cfh$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfh$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbW:Lcom/kingroot/kinguser/cfh$a;

.field final synthetic cbX:I

.field final synthetic cbY:Lcom/kingroot/kinguser/cfp;

.field final synthetic cbZ:Lcom/kingroot/kinguser/cfh$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh$2;Lcom/kingroot/kinguser/cfh$a;ILcom/kingroot/kinguser/cfp;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbZ:Lcom/kingroot/kinguser/cfh$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbW:Lcom/kingroot/kinguser/cfh$a;

    iput p3, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbX:I

    iput-object p4, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbY:Lcom/kingroot/kinguser/cfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 375
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbW:Lcom/kingroot/kinguser/cfh$a;

    iget v0, v0, Lcom/kingroot/kinguser/cfh$a;->pushType:I

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbZ:Lcom/kingroot/kinguser/cfh$2;

    iget-object v1, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbW:Lcom/kingroot/kinguser/cfh$a;

    iget-wide v2, v0, Lcom/kingroot/kinguser/cfh$a;->jW:J

    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbW:Lcom/kingroot/kinguser/cfh$a;

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$a;->cce:Lcom/kingroot/kinguser/bg;

    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbW:Lcom/kingroot/kinguser/cfh$a;

    iget-object v5, v0, Lcom/kingroot/kinguser/cfh$a;->ccf:[B

    iget-object v6, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbY:Lcom/kingroot/kinguser/cfp;

    invoke-static/range {v1 .. v6}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbZ:Lcom/kingroot/kinguser/cfh$2;

    iget-object v1, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbW:Lcom/kingroot/kinguser/cfh$a;

    iget-wide v2, v0, Lcom/kingroot/kinguser/cfh$a;->jW:J

    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbW:Lcom/kingroot/kinguser/cfh$a;

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$a;->cce:Lcom/kingroot/kinguser/bg;

    iget-object v0, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbW:Lcom/kingroot/kinguser/cfh$a;

    iget-object v5, v0, Lcom/kingroot/kinguser/cfh$a;->ccf:[B

    iget-object v6, p0, Lcom/kingroot/kinguser/cfh$2$1;->cbY:Lcom/kingroot/kinguser/cfp;

    invoke-static/range {v1 .. v6}, Lcom/kingroot/kinguser/cfh;->b(Lcom/kingroot/kinguser/cfh;JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V

    goto :goto_0
.end method
