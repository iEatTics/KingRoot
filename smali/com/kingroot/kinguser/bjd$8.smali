.class Lcom/kingroot/kinguser/bjd$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;

.field final synthetic bwl:Lcom/kingroot/common/uilib/KBaseListView;

.field final synthetic bwm:Lcom/kingroot/kinguser/bjc;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$8;->bwa:Lcom/kingroot/kinguser/bjd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjd$8;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    iput-object p3, p0, Lcom/kingroot/kinguser/bjd$8;->bwm:Lcom/kingroot/kinguser/bjc;

    iput-object p4, p0, Lcom/kingroot/kinguser/bjd$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 650
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$8;->bwa:Lcom/kingroot/kinguser/bjd;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$8;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjd$8;->bwm:Lcom/kingroot/kinguser/bjc;

    iget-object v3, p0, Lcom/kingroot/kinguser/bjd$8;->val$view:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bjd;Lcom/kingroot/common/uilib/KBaseListView;Lcom/kingroot/kinguser/bjc;Landroid/view/View;)V

    .line 651
    return-void
.end method
