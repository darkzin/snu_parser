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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   3:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
l_f1_1_while_cond:
    movl    $52602, %eax            #   1:     sub    t3 <- 52602, 74311
    movl    $74311, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 28033
    movl    $28033, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t5 <- t4, 78810
    movl    $78810, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t5 # 17864 goto 2_while_body
    movl    $17864, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   9:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
l_f1_6_while_cond:
    jmp     l_f1_5                  #  11:     goto   5
    movl    $98, %eax               #  12:     if     98 > 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_9                 
    jmp     l_f1_10                 #  13:     goto   10
l_f1_9:
    movl    $1, %eax                #  15:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_11                 #  16:     goto   11
l_f1_10:
    movl    $0, %eax                #  18:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f1_11:
    movzbl  -29(%ebp), %eax         #  20:     assign v2 <- t7
    movb    %al, 8(%ebp)           
    jmp     l_f1_6_while_cond       #  21:     goto   6_while_cond
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 2 of <array 7 of <array 9 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 6 of <array 2 of <array 5 of <array 7 of <bool>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $52728, %eax            #   1:     if     52728 > 4687 goto 2_while_body
    movl    $4687, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    dummyINTfunc            #   4:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    call    f0                      #   7:     call   t4 <- f0
    movb    %al, -17(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_6                  #   9:     goto   6
l_f2_12_while_cond:
    movl    $100, %eax              #  11:     if     100 >= 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13_while_body     
    jmp     l_f2_11                 #  12:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  14:     goto   12_while_cond
l_f2_11:
    movl    $98, %eax               #  16:     if     98 < 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  17:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  19:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  23:     goto   7_while_cond
l_f2_6:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $99, %eax               #   0:     if     99 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, v0                
    movl    $0, %eax                #   4:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
l_test_7_while_cond:
    jmp     l_test_6                #   9:     goto   6
    jmp     l_test_exit            
    call    dummyProcedure          #  11:     call   dummyProcedure
l_test_12_while_cond:
    movl    $99, %eax               #  13:     if     99 >= 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
l_test_17_while_cond:
    movl    $44427, %eax            #  22:     if     44427 < 37803 goto 20
    movl    $37803, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_20              
    jmp     l_test_21               #  23:     goto   21
l_test_20:
    movl    $1, %eax                #  25:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_22               #  26:     goto   22
l_test_21:
    movl    $0, %eax                #  28:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_22:
    movzbl  -13(%ebp), %eax         #  30:     param  1 <- t0
    pushl   %eax                   
    movl    $371, %eax              #  31:     if     371 < 73540 goto 24
    movl    $73540, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_24              
    jmp     l_test_25               #  32:     goto   25
l_test_24:
    movl    $1, %eax                #  34:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_26               #  35:     goto   26
l_test_25:
    movl    $0, %eax                #  37:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_26:
    movzbl  -14(%ebp), %eax         #  39:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  40:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  41:     if     t2 = 1 goto 19
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_19              
    jmp     l_test_16               #  42:     goto   16
l_test_19:
    jmp     l_test_17_while_cond    #  44:     goto   17_while_cond
l_test_16:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
