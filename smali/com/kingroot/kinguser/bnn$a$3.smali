.class Lcom/kingroot/kinguser/bnn$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bnn$a;->a(Ljava/lang/String;Lcom/kingroot/kinguser/bwd;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bEr:Lcom/kingroot/kinguser/bwd;

.field final synthetic bEt:Lcom/kingroot/kinguser/bnn$a;

.field final synthetic byG:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bnn$a;Lcom/kingroot/kinguser/bwd;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/kingroot/kinguser/bnn$a$3;->bEt:Lcom/kingroot/kinguser/bnn$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bnn$a$3;->bEr:Lcom/kingroot/kinguser/bwd;

    iput-object p3, p0, Lcom/kingroot/kinguser/bnn$a$3;->byG:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$a$3;->bEr:Lcom/kingroot/kinguser/bwd;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$a$3;->bEr:Lcom/kingroot/kinguser/bwd;

    iget-object v1, p0, Lcom/kingroot/kinguser/bnn$a$3;->byG:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bwd;->onComplete(Ljava/lang/Object;)V

    .line 582
    :cond_0
    return-void
.end method
