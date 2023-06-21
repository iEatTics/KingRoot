.class Lcom/kingroot/kinguser/all$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/all;->a(Lcom/kingroot/kinguser/all$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic axP:Lcom/kingroot/kinguser/all$a;

.field final synthetic axQ:Lcom/kingroot/kinguser/all;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/all;Lcom/kingroot/kinguser/all$a;I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/kinguser/all$1;->axQ:Lcom/kingroot/kinguser/all;

    iput-object p2, p0, Lcom/kingroot/kinguser/all$1;->axP:Lcom/kingroot/kinguser/all$a;

    iput p3, p0, Lcom/kingroot/kinguser/all$1;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/all$1;->axQ:Lcom/kingroot/kinguser/all;

    iget-object v1, p0, Lcom/kingroot/kinguser/all$1;->axP:Lcom/kingroot/kinguser/all$a;

    iget v2, p0, Lcom/kingroot/kinguser/all$1;->Qj:I

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/all;->a(Lcom/kingroot/kinguser/all;Lcom/kingroot/kinguser/all$a;I)V

    .line 57
    return-void
.end method
