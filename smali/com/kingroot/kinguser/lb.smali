.class Lcom/kingroot/kinguser/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/nu;


# instance fields
.field final synthetic uH:Lcom/kingroot/kinguser/la;

.field final synthetic uI:Lcom/kingroot/kinguser/it;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/la;Lcom/kingroot/kinguser/it;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/kingroot/kinguser/lb;->uH:Lcom/kingroot/kinguser/la;

    iput-object p2, p0, Lcom/kingroot/kinguser/lb;->uI:Lcom/kingroot/kinguser/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/lb;->uI:Lcom/kingroot/kinguser/it;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    return-object v0
.end method
