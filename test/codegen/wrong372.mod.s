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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <char> %ebp-21 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    jmp     l_f0_4                  #   2:     goto   4
l_f0_4:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t3
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #   9:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]

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
    movl    $99, %eax               #   0:     if     99 >= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_7_if_false         #   9:     goto   7_if_false
    movl    $100, %eax              #  10:     assign v0 <- 100
    movb    %al, -21(%ebp)         
    jmp     l_f1_5                  #  11:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $97, %eax               #  14:     if     97 < 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  15:     goto   12_if_false
l_f1_11_if_true:
    movl    $51921, %eax            #  17:     if     51921 >= 835 goto 15
    movl    $835, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_15                
    jmp     l_f1_16                 #  18:     goto   16
l_f1_15:
    movl    $1, %eax                #  20:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_17                 #  21:     goto   17
l_f1_16:
    movl    $0, %eax                #  23:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_17:
    movzbl  -14(%ebp), %eax         #  25:     assign v1 <- t4
    movb    %al, -22(%ebp)         
    call    dummyINTfunc            #  26:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_10                 #  27:     goto   10
l_f1_12_if_false:
l_f1_10:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    movl    $0, %eax                #   0:     assign v1 <- 0
    movb    %al, 12(%ebp)          
    call    f1                      #   1:     call   t3 <- f1
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   2:     goto   0
l_f2_0:
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     return t4
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   6:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   7:     return t5
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $100, %eax              #   7:     if     100 > 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_6_if_true:
    movl    $97, %eax               #  10:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_5                #  11:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $99, %eax               #  14:     if     99 <= 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_11              
    jmp     l_test_12               #  15:     goto   12
l_test_11:
    movl    $1, %eax                #  17:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_13               #  18:     goto   13
l_test_12:
    movl    $0, %eax                #  20:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_13:
    movzbl  -13(%ebp), %eax         #  22:     param  2 <- t0
    pushl   %eax                   
    movl    $100, %eax              #  23:     if     100 >= 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_15              
    jmp     l_test_16               #  24:     goto   16
l_test_15:
    movl    $1, %eax                #  26:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_17               #  27:     goto   17
l_test_16:
    movl    $0, %eax                #  29:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_17:
    movzbl  -14(%ebp), %eax         #  31:     param  1 <- t1
    pushl   %eax                   
    movl    $97, %eax               #  32:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #  33:     call   t2 <- f2
    addl    $12, %esp              
    movb    %al, -15(%ebp)         

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
