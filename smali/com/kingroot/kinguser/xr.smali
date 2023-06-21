.class public Lcom/kingroot/kinguser/xr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final UI:Lcom/kingroot/kinguser/xq;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/xq;)V
    .locals 0
    .param p1    # Lcom/kingroot/kinguser/xq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/kingroot/kinguser/xr;->UI:Lcom/kingroot/kinguser/xq;

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/xr;->UI:Lcom/kingroot/kinguser/xq;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/xs;->a(Lcom/kingroot/kinguser/xq;F)F

    move-result v0

    return v0
.end method
