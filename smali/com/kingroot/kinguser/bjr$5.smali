.class Lcom/kingroot/kinguser/bjr$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/adf$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr;->aeu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;

.field final synthetic byu:Lcom/kingroot/kinguser/bjt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;Lcom/kingroot/kinguser/bjt;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$5;->byr:Lcom/kingroot/kinguser/bjr;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjr$5;->byu:Lcom/kingroot/kinguser/bjt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$5;->byu:Lcom/kingroot/kinguser/bjt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjt;->dismiss()V

    .line 1152
    const/4 v0, 0x0

    return v0
.end method
