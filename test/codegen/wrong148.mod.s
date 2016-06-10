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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 9 of <array 8 of <array 6 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 10 of <array 3 of <array 3 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #   7:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_6_while_cond:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  10:     if     98 >= t2 goto 7_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  13:     goto   6_while_cond
l_f0_5:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 8 of <array 3 of <array 6 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 10 of <array 8 of <array 9 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #    -21(%ebp)   1  [ $v5       <char> %ebp-21 ]

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
    movl    $37804, %eax            #   0:     sub    t0 <- 37804, 72917
    movl    $72917, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 82707
    movl    $82707, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $98191, %eax            #   2:     if     98191 >= t1 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
l_f1_1_if_true:
    movl    $99, %eax               #   5:     return 99
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $25732, %eax            #   7:     if     25732 > 46825 goto 7_while_body
    movl    $46825, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   8:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  10:     goto   6_while_cond
l_f1_5:
l_f1_10_while_cond:
    movl    $99233, %eax            #  13:     if     99233 <= 33531 goto 11_while_body
    movl    $33531, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  16:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_0                  #  18:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_14_while_cond:
    movl    $100, %eax              #  22:     if     100 < 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  23:     goto   13
l_f1_15_while_body:
l_f1_18_while_cond:
    movl    $1, %eax                #  26:     if     1 = 0 goto 19_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_19_while_body     
    jmp     l_f1_17                 #  27:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  29:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_14_while_cond      #  31:     goto   14_while_cond
l_f1_13:
    movl    $99, %eax               #  33:     assign v5 <- 99
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 9 of <array 6 of <array 5 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 7 of <array 1 of <array 4 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 9 of <array 9 of <array 5 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v5       <int> %ebp-24 ]

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
l_f2_1_while_cond:
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $73239, %eax            #   2:     sub    t1 <- 73239, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $48316, %eax            #   3:     if     48316 < t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_6_if_false         #   8:     goto   6_if_false
    movl    $38401, %eax            #   9:     return 38401
    jmp     l_f2_exit              
    movl    $663, %eax              #  10:     assign v5 <- 663
    movl    %eax, -24(%ebp)        
    jmp     l_f2_11_if_false        #  11:     goto   11_if_false
    jmp     l_f2_9                  #  12:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_4                  #  15:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_14_if_false        #  18:     goto   14_if_false
    movl    $1279, %eax             #  19:     if     1279 >= 71916 goto 18_if_true
    movl    $71916, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  20:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  22:     goto   17
l_f2_19_if_false:
l_f2_17:
    call    WriteLn                 #  25:     call   WriteLn
    jmp     l_f2_12                 #  26:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $0, %eax                #   0:     if     0 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    movl    $1, %eax                #   8:     assign v0 <- 1
    movb    %al, v0                
    movl    $97946, %eax            #   9:     if     97946 < 38830 goto 10_if_true
    movl    $38830, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  12:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $24299, %eax            #  15:     assign v1 <- 24299
    movl    %eax, v1               
l_test_15_while_cond:
    movl    $99, %eax               #  17:     if     99 <= 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  18:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  20:     goto   15_while_cond
l_test_14:
    jmp     l_test_0                #  22:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #  25:     assign v2 <- 100
    movb    %al, v2                
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
