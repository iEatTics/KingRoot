.class Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ey:Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$1;->Ey:Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$1;->Ey:Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->a(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;Z)Z

    .line 29
    iget-object v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$1;->Ey:Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->a(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;J)J

    .line 30
    iget-object v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$1;->Ey:Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->setVisibility(I)V

    .line 31
    return-void
.end method
