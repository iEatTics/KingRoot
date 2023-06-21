.class Lcom/kingroot/kinguser/bjr$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr$a;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byy:Lcom/kingroot/kinguser/bjr$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr$a;)V
    .locals 0

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$a$1;->byy:Lcom/kingroot/kinguser/bjr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$a$1;->byy:Lcom/kingroot/kinguser/bjr$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjr$a;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1289
    return-void
.end method
