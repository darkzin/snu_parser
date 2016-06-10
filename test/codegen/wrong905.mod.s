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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #   1:     if     0 = 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #   9:     assign v1 <- t3
    movb    %al, -18(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_12_if_false        #  11:     goto   12_if_false
    jmp     l_f0_10                 #  12:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_7_while_cond       #  15:     goto   7_while_cond

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $66736, %eax            #   0:     sub    t2 <- 66736, 36328
    movl    $36328, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t2 >= 11567 goto 1_if_true
    movl    $11567, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $100, %eax              #   4:     assign v1 <- 100
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $10038, %eax            #   9:     if     10038 > 54620 goto 7
    movl    $54620, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #  10:     goto   8
l_f1_7:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_9                  #  13:     goto   9
l_f1_8:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_9:
    movzbl  -18(%ebp), %eax         #  17:     return t4
    jmp     l_f1_exit              
    movl    $97402, %eax            #  18:     mul    t5 <- 97402, 95749
    movl    $95749, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t6 <- t5, 16757
    movl    $16757, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     div    t7 <- t6, 19118
    movl    $19118, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     if     t7 >= 12569 goto 13
    movl    $12569, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_13                
    jmp     l_f1_14                 #  22:     goto   14
l_f1_13:
    movl    $1, %eax                #  24:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_15                 #  25:     goto   15
l_f1_14:
    movl    $0, %eax                #  27:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f1_15:
    movzbl  -33(%ebp), %eax         #  29:     return t8
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <char> %ebp-18 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f2_4                  #   0:     goto   4
    jmp     l_f2_4                  #   1:     goto   4
l_f2_4:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
    movl    $0, %eax                #   5:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $0, %eax                #   7:     if     0 # t2 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   8:     goto   2_if_false
l_f2_1_if_true:
    call    f0                      #  10:     call   t3 <- f0
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  11:     assign v1 <- 99
    movb    %al, -18(%ebp)         
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #  15:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #  16:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  17:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  18:     call   t5 <- f1
    addl    $8, %esp               
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  19:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $28150, %eax            #   0:     assign v0 <- 28150
    movl    %eax, v0               
    call    f2                      #   1:     call   t0 <- f2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v0 <- t0
    movl    %eax, v0               
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   4:     if     99 # t1 goto 3_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_3_if_true       
    jmp     l_test_4_if_false       #   5:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $1, %eax                #  10:     assign v1 <- 1
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
