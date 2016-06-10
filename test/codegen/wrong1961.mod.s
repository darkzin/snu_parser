##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 49 of <array 52 of <array 69 of <array 65 of <array 40 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 26 of <array 98 of <array 98 of <array 29 of <array 36 of <bool>>>>>>> %ebp+12 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t5
    movb    %al, -25(%ebp)         
    movl    $100, %eax              #   2:     if     100 <= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    movl    $6396, %eax             #   5:     if     6396 <= 89692 goto 6_if_true
    movl    $89692, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $32640, %eax            #  11:     if     32640 <= 62410 goto 10_if_true
    movl    $62410, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $98, %eax               #  17:     if     98 <= 99 goto 14
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_14                
    jmp     l_f0_15                 #  18:     goto   15
l_f0_14:
    movl    $1, %eax                #  20:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  21:     goto   16
l_f0_15:
    movl    $0, %eax                #  23:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_16:
    movzbl  -14(%ebp), %eax         #  25:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  26:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $51118, %eax            #  29:     sub    t7 <- 51118, 48709
    movl    $48709, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     add    t8 <- t7, 41983
    movl    $41983, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     assign v3 <- t8
    movl    %eax, -32(%ebp)        

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 26 of <array 98 of <array 98 of <array 29 of <array 36 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 49 of <array 52 of <array 69 of <array 65 of <array 40 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 11 of <array 95 of <array 92 of <array 51 of <bool>>>>>>> %ebp+8 ]
    #   -457111248(%ebp)  457111224  [ $v1       <array 49 of <array 52 of <array 69 of <array 65 of <array 40 of <bool>>>>>> %ebp-457111248 ]
    #   -717802248(%ebp)  260691000  [ $v2       <array 26 of <array 98 of <array 98 of <array 29 of <array 36 of <bool>>>>>> %ebp-717802248 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $717802236, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $179450559, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-457111248(%ebp)     # local array 'v1': 5 dimensions
    movl    $49,-457111244(%ebp)    #   dimension 1: 49 elements
    movl    $52,-457111240(%ebp)    #   dimension 2: 52 elements
    movl    $69,-457111236(%ebp)    #   dimension 3: 69 elements
    movl    $65,-457111232(%ebp)    #   dimension 4: 65 elements
    movl    $40,-457111228(%ebp)    #   dimension 5: 40 elements
    movl    $5,-717802248(%ebp)     # local array 'v2': 5 dimensions
    movl    $26,-717802244(%ebp)    #   dimension 1: 26 elements
    movl    $98,-717802240(%ebp)    #   dimension 2: 98 elements
    movl    $98,-717802236(%ebp)    #   dimension 3: 98 elements
    movl    $29,-717802232(%ebp)    #   dimension 4: 29 elements
    movl    $36,-717802228(%ebp)    #   dimension 5: 36 elements

    # function body
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_1_if_true          #   2:     goto   1_if_true
    jmp     l_f1_1_if_true          #   3:     goto   1_if_true
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    WriteLn                 #   9:     call   WriteLn
    leal    -717802248(%ebp), %eax  #  10:     &()    t5 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  1 <- t5
    pushl   %eax                   
    leal    -457111248(%ebp), %eax  #  12:     &()    t6 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  14:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $717802236, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 26 of <array 98 of <array 98 of <array 29 of <array 36 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 49 of <array 52 of <array 69 of <array 65 of <array 40 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t9       <char> %ebp-23 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 55 of <array 14 of <array 61 of <array 94 of <array 89 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -24(%ebp)   1  [ $v3       <bool> %ebp-24 ]
    #   -457111248(%ebp)  457111224  [ $v4       <array 49 of <array 52 of <array 69 of <array 65 of <array 40 of <bool>>>>>> %ebp-457111248 ]
    #   -717802248(%ebp)  260691000  [ $v5       <array 26 of <array 98 of <array 98 of <array 29 of <array 36 of <bool>>>>>> %ebp-717802248 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $717802236, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $179450559, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-457111248(%ebp)     # local array 'v4': 5 dimensions
    movl    $49,-457111244(%ebp)    #   dimension 1: 49 elements
    movl    $52,-457111240(%ebp)    #   dimension 2: 52 elements
    movl    $69,-457111236(%ebp)    #   dimension 3: 69 elements
    movl    $65,-457111232(%ebp)    #   dimension 4: 65 elements
    movl    $40,-457111228(%ebp)    #   dimension 5: 40 elements
    movl    $5,-717802248(%ebp)     # local array 'v5': 5 dimensions
    movl    $26,-717802244(%ebp)    #   dimension 1: 26 elements
    movl    $98,-717802240(%ebp)    #   dimension 2: 98 elements
    movl    $98,-717802236(%ebp)    #   dimension 3: 98 elements
    movl    $29,-717802232(%ebp)    #   dimension 4: 29 elements
    movl    $36,-717802228(%ebp)    #   dimension 5: 36 elements

    # function body
    leal    -717802248(%ebp), %eax  #   0:     &()    t5 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t5
    pushl   %eax                   
    leal    -457111248(%ebp), %eax  #   2:     &()    t6 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   4:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   5:     assign v3 <- t7
    movb    %al, -24(%ebp)         
l_f2_2_while_cond:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
    movl    $0, %eax                #   9:     assign t8 <- 0
    movb    %al, -22(%ebp)         
l_f2_7:
    movzbl  -22(%ebp), %eax         #  11:     if     t8 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #  12:     goto   1
l_f2_3_while_body:
    call    dummyCHARfunc           #  14:     call   t9 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movl    $99, %eax               #  15:     assign v2 <- 99
    movb    %al, 16(%ebp)          
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
l_f2_12_while_cond:
    jmp     l_f2_13_while_body      #  19:     goto   13_while_body
    jmp     l_f2_13_while_body      #  20:     goto   13_while_body
    jmp     l_f2_13_while_body      #  21:     goto   13_while_body
    jmp     l_f2_11                 #  22:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  24:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $717802236, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 26 of <array 98 of <array 98 of <array 29 of <array 36 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 49 of <array 52 of <array 69 of <array 65 of <array 40 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $12930, %eax            #   7:     if     12930 < 17999 goto 7_if_true
    movl    $17999, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
    call    dummyCHARfunc           #  12:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #  13:     goto   6
l_test_8_if_false:
l_test_6:
    leal    v1, %eax                #  16:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  18:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  20:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_test_16_if_true       #  21:     goto   16_if_true
    call    dummyBOOLfunc           #  22:     call   t4 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  23:     if     t4 = 1 goto 16_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16_if_true      
    jmp     l_test_17_if_false      #  24:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  26:     goto   15
l_test_17_if_false:
l_test_15:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <array 49 of <array 52 of <array 69 of <array 65 of <array 40 of <bool>>>>>>
    .long    5
    .long   49
    .long   52
    .long   69
    .long   65
    .long   40
    .skip 457111200
v1:                                 # <array 26 of <array 98 of <array 98 of <array 29 of <array 36 of <bool>>>>>>
    .long    5
    .long   26
    .long   98
    .long   98
    .long   29
    .long   36
    .skip 260690976








    # end of global data section
    #-----------------------------------------

    .end
##################################################
