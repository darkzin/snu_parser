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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 84 of <array 39 of <array 61 of <array 100 of <int>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 > 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_exit              

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 83 of <array 71 of <array 80 of <array 42 of <array 53 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 85 of <array 63 of <array 17 of <array 49 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $64991, %eax            #   0:     assign v2 <- 64991
    movl    %eax, 16(%ebp)         
    jmp     l_f1_0                  #   1:     goto   0
l_f1_0:
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 90 of <array 9 of <array 76 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 67 of <array 5 of <array 97 of <array 14 of <array 21 of <char>>>>>>> %ebp+20 ]

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
    movl    $79577, %eax            #   0:     add    t3 <- 79577, 56182
    movl    $56182, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $58041, %eax            #   1:     sub    t4 <- 58041, 55419
    movl    $55419, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t3 < t4 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     return t5
    jmp     l_f2_exit              
l_f2_6_while_cond:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  13:     if     t6 >= 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_while_body:
    movl    $97, %eax               #  16:     if     97 < 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_10                
    jmp     l_f2_11                 #  17:     goto   11
l_f2_10:
    movl    $1, %eax                #  19:     assign t7 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $0, %eax                #  22:     assign t7 <- 0
    movb    %al, -23(%ebp)         
l_f2_12:
    movzbl  -23(%ebp), %eax         #  24:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  25:     goto   6_while_cond
l_f2_5:
    movl    $87216, %eax            #  27:     if     87216 < 56417 goto 15_if_true
    movl    $56417, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  28:     goto   16_if_false
l_f2_15_if_true:
    call    ReadInt                 #  30:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f2_14                 #  31:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    jmp     l_test_exit            
    jmp     l_test_0                #   1:     goto   0
l_test_0:
l_test_5_while_cond:
    call    dummyINTfunc            #   4:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     if     t0 > 84478 goto 6_while_body
    movl    $84478, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
l_test_9_while_cond:
    jmp     l_test_8                #   9:     goto   8
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
l_test_8:
    jmp     l_test_5_while_cond     #  12:     goto   5_while_cond
l_test_4:
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
    call    dummyCHARfunc           #  15:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_test_18_while_cond:
    movl    $83000, %eax            #  17:     if     83000 < 20711 goto 19_while_body
    movl    $20711, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_19_while_body   
    jmp     l_test_17               #  18:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  20:     goto   18_while_cond
l_test_17:
    jmp     l_test_11               #  22:     goto   11
l_test_13_if_false:
l_test_11:
l_test_22_while_cond:
    movl    $44979, %eax            #  26:     if     44979 = 49183 goto 23_while_body
    movl    $49183, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_23_while_body   
    jmp     l_test_21               #  27:     goto   21
l_test_23_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_22_while_cond    #  31:     goto   22_while_cond
l_test_21:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  34:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
