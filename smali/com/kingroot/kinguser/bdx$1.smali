.class Lcom/kingroot/kinguser/bdx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bdv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bdx;->I(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bkd:Lcom/kingroot/kinguser/bdx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bdx;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/bdx$1;->bkd:Lcom/kingroot/kinguser/bdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is(I)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/bdx;->YW()V

    .line 32
    :cond_0
    return-void
.end method
