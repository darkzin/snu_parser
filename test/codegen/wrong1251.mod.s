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
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   5:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   8:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   9:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f2_exit              
    call    dummyINTfunc            #   1:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    movl    $26472, %eax            #   0:     add    t0 <- 26472, 31692
    movl    $31692, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 52716
    movl    $52716, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 59110
    movl    $59110, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 77853
    movl    $77853, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 96425
    movl    $96425, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
    movl    $1, %eax                #   7:     if     1 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   8:     goto   3_if_false
l_test_2_if_true:
    movl    $100, %eax              #  10:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
    jmp     l_test_6                #  12:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_9                #  15:     goto   9
l_test_9:
l_test_13_while_cond:
    jmp     l_test_12               #  18:     goto   12
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:
l_test_16_while_cond:
    movl    $100, %eax              #  22:     if     100 <= 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_17_while_body   
    jmp     l_test_15               #  23:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  25:     goto   16_while_cond
l_test_15:
    jmp     l_test_1                #  27:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_23_if_true       #  30:     goto   23_if_true
    jmp     l_test_24_if_false      #  31:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  33:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_19               #  36:     goto   19
l_test_19:
l_test_27_while_cond:
    movl    $98, %eax               #  39:     if     98 >= 100 goto 28_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_28_while_body   
    jmp     l_test_26               #  40:     goto   26
l_test_28_while_body:
    jmp     l_test_30               #  42:     goto   30
l_test_30:
    jmp     l_test_exit            
    movl    $99, %eax               #  45:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_27_while_cond    #  46:     goto   27_while_cond
l_test_26:
    jmp     l_test_37_if_false      #  48:     goto   37_if_false
    jmp     l_test_40_if_false      #  49:     goto   40_if_false
    jmp     l_test_38               #  50:     goto   38
l_test_40_if_false:
l_test_38:
l_test_42_while_cond:
    jmp     l_test_41               #  54:     goto   41
    jmp     l_test_42_while_cond    #  55:     goto   42_while_cond
l_test_41:
    jmp     l_test_35               #  57:     goto   35
l_test_37_if_false:
l_test_35:
    movl    $97, %eax               #  60:     if     97 < 97 goto 45_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_45_if_true      
    jmp     l_test_46_if_false      #  61:     goto   46_if_false
l_test_45_if_true:
    movl    $85020, %eax            #  63:     assign v1 <- 85020
    movl    %eax, v1               
    jmp     l_test_49               #  64:     goto   49
l_test_49:
    jmp     l_test_44               #  66:     goto   44
l_test_46_if_false:
l_test_44:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
