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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_7_if_true          #   5:     goto   7_if_true
    jmp     l_f0_7_if_true          #   6:     goto   7_if_true
    jmp     l_f0_7_if_true          #   7:     goto   7_if_true
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_6:
    call    ReadInt                 #  11:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 93 of <array 29 of <array 14 of <array 35 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 49 of <array 6 of <array 77 of <array 16 of <array 32 of <bool>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    movl    $83483, %eax            #   0:     if     83483 >= 16463 goto 1_if_true
    movl    $16463, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $99, %eax               #   5:     if     99 >= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $87426, %eax            #  13:     if     87426 <= 93917 goto 10_if_true
    movl    $93917, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  14:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  17:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $24312, %eax            #  18:     assign v2 <- 24312
    movl    %eax, -20(%ebp)        
    jmp     l_f1_exit              
    jmp     l_f1_9                  #  20:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_18                 #  23:     goto   18
    jmp     l_f1_18                 #  24:     goto   18
    movl    $97, %eax               #  25:     if     97 < 97 goto 18
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_18                
    jmp     l_f1_19                 #  26:     goto   19
l_f1_18:
    movl    $1, %eax                #  28:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_20                 #  29:     goto   20
l_f1_19:
    movl    $0, %eax                #  31:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_20:
    movzbl  -14(%ebp), %eax         #  33:     assign v3 <- t4
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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  3 <- t3
    pushl   %eax                   
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   3:     if     97 < t4 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_3:
    movzbl  -15(%ebp), %eax         #  11:     param  2 <- t5
    pushl   %eax                   
    movl    $100, %eax              #  12:     param  1 <- 100
    pushl   %eax                   
    movl    $1, %eax                #  13:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  14:     call   t6 <- f0
    addl    $16, %esp              
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  15:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $74193, %eax            #   0:     if     74193 <= 71985 goto 1_if_true
    movl    $71985, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    WriteLn                 #   3:     call   WriteLn
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    movl    $99, %eax               #   8:     if     99 >= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   9:     goto   5
l_test_7_while_body:
    movl    $22567, %eax            #  11:     if     22567 = 47728 goto 10_if_true
    movl    $47728, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  14:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_6_while_cond     #  18:     goto   6_while_cond
l_test_5:
l_test_15_while_cond:
    jmp     l_test_14               #  21:     goto   14
l_test_20_while_cond:
    movl    $0, %eax                #  23:     if     0 = 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21_while_body   
    jmp     l_test_19               #  24:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  26:     goto   20_while_cond
l_test_19:
    jmp     l_test_15_while_cond    #  28:     goto   15_while_cond
l_test_14:
    movl    $19170, %eax            #  30:     sub    t0 <- 19170, 73979
    movl    $73979, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  31:     add    t1 <- t0, 29431
    movl    $29431, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     sub    t2 <- t1, 64977
    movl    $64977, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     assign v0 <- t2
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_25               #  35:     goto   25
l_test_25:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
