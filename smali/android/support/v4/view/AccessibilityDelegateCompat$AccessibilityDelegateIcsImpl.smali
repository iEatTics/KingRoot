.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;
.super Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 184
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {v0}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->newAccessibilityDelegateDefaultImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 191
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 192
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 197
    .line 198
    invoke-virtual {p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    move-result-object v0

    .line 197
    invoke-static {p1, p2, v0}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 204
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 205
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 210
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 216
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V

    .line 217
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 222
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 223
    return-void
.end method
