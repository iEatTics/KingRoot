.class Lcom/kingroot/kinguser/aus$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aus;->onRootSuc(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSF:I

.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;I)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$6;->this$0:Lcom/kingroot/kinguser/aus;

    iput p2, p0, Lcom/kingroot/kinguser/aus$6;->aSF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$6;->this$0:Lcom/kingroot/kinguser/aus;

    iget v1, p0, Lcom/kingroot/kinguser/aus$6;->aSF:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aus;->onRootSuc(I)V

    .line 267
    return-void
.end method
