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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 50 of <array 10 of <array 78 of <array 74 of <array 55 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 19 of <array 26 of <array 35 of <array 21 of <int>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]

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
l_f0_1_while_cond:
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $38695, %eax            #   2:     if     38695 <= t1 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_5_if_true          #   7:     goto   5_if_true
    jmp     l_f0_6_if_false         #   8:     goto   6_if_false
l_f0_5_if_true:
    movl    $42996, %eax            #  10:     assign v2 <- 42996
    movl    %eax, -20(%ebp)        
    jmp     l_f0_4                  #  11:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $99, %eax               #  14:     assign v3 <- 99
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <bool> %ebp-22 ]

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
    movl    $98, %eax               #   0:     if     98 = 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $5824, %eax             #   4:     add    t1 <- 5824, 52561
    movl    $52561, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $9901, %eax             #   5:     if     9901 <= t1 goto 6_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  13:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_11                 #  14:     goto   11
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_12                 #  16:     goto   12
l_f1_11:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f1_12:
    movzbl  -21(%ebp), %eax         #  20:     assign v0 <- t3
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t1
    movb    %al, -15(%ebp)         
l_f2_3_while_cond:
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t2 >= 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #   6:     goto   2
l_f2_4_while_body:
    jmp     l_f2_6                  #   8:     goto   6
l_f2_6:
    jmp     l_f2_9                  #  10:     goto   9
l_f2_9:
    jmp     l_f2_3_while_cond       #  12:     goto   3_while_cond
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    movl    $1, %eax                #   0:     if     1 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_6_if_false       #   3:     goto   6_if_false
    jmp     l_test_4                #   4:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $85795, %eax            #   7:     if     85795 <= 5249 goto 8_if_true
    movl    $5249, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  10:     goto   7
l_test_9_if_false:
l_test_7:
l_test_12_while_cond:
    jmp     l_test_11               #  14:     goto   11
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
l_test_11:
    jmp     l_test_0                #  17:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
    call    dummyCHARfunc           #  21:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $100, %eax              #  23:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_14               #  24:     goto   14
l_test_16_if_false:
l_test_14:
    movl    $23338, %eax            #  27:     if     23338 <= 4870 goto 21_if_true
    movl    $4870, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  28:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_29_if_false      #  30:     goto   29_if_false
    jmp     l_test_27               #  31:     goto   27
l_test_29_if_false:
l_test_27:
    jmp     l_test_32_if_false      #  34:     goto   32_if_false
    jmp     l_test_30               #  35:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_exit            
    jmp     l_test_24               #  39:     goto   24
l_test_24:
    jmp     l_test_20               #  41:     goto   20
l_test_22_if_false:
l_test_20:

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
