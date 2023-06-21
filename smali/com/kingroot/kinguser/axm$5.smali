.class Lcom/kingroot/kinguser/axm$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->c(ILcom/kingroot/kinguser/aqc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aKp:Lcom/kingroot/kinguser/aqs;

.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;Lcom/kingroot/kinguser/aqs;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$5;->this$0:Lcom/kingroot/kinguser/axm;

    iput-object p2, p0, Lcom/kingroot/kinguser/axm$5;->aKp:Lcom/kingroot/kinguser/aqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$5;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->q(Lcom/kingroot/kinguser/axm;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$5;->aKp:Lcom/kingroot/kinguser/aqs;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aqs;->MT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    return-void
.end method
