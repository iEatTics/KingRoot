.class Lcom/kingroot/kinguser/agb$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agb$c;->a(Lcom/kingroot/kinguser/agb$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aka:Lcom/kingroot/kinguser/agb$d;

.field final synthetic akb:Lcom/kingroot/kinguser/agb$c;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agb$c;Lcom/kingroot/kinguser/agb$d;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/kingroot/kinguser/agb$c$1;->akb:Lcom/kingroot/kinguser/agb$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/agb$c$1;->aka:Lcom/kingroot/kinguser/agb$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/kingroot/kinguser/agb$c$1;->aka:Lcom/kingroot/kinguser/agb$d;

    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c$1;->aka:Lcom/kingroot/kinguser/agb$d;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/agb$d;->akd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/kingroot/kinguser/agb$d;->akd:Z

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c$1;->akb:Lcom/kingroot/kinguser/agb$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/agb$c;->ajS:Lcom/kingroot/kinguser/agb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agb;->notifyDataSetChanged()V

    .line 142
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
