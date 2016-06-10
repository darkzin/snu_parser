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
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 47 of <array 22 of <array 28 of <array 63 of <array 3 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    movl    $28022, %eax            #   0:     if     28022 > 76926 goto 1_if_true
    movl    $76926, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $99, %eax               #   3:     assign v3 <- 99
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #   4:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     return t3
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 72 of <array 14 of <array 37 of <array 14 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 79 of <array 67 of <array 85 of <array 41 of <array 24 of <int>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   1:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_4                  #   2:     goto   4
    movl    $0, %eax                #   3:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_4:
    movzbl  -17(%ebp), %eax         #   5:     assign v3 <- t4
    movb    %al, 12(%ebp)          
    movl    $29527, %eax            #   6:     return 29527
    jmp     l_f1_exit              
    jmp     l_f1_6                  #   7:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]

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
    movl    $40096, %eax            #   0:     add    t3 <- 40096, 79549
    movl    $79549, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 57473
    movl    $57473, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t4
    movl    %eax, -28(%ebp)        
l_f2_2_while_cond:
    movl    $98, %eax               #   4:     if     98 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
    movl    $97, %eax               #   7:     if     97 = 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   8:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $1, %eax                #  13:     assign v3 <- 1
    movb    %al, -29(%ebp)         
l_f2_11_while_cond:
    movl    $50531, %eax            #  15:     if     50531 < 88091 goto 12_while_body
    movl    $88091, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_16_if_false        #  20:     goto   16_if_false
    jmp     l_f2_14                 #  21:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_2_while_cond       #  24:     goto   2_while_cond
l_f2_1:
l_f2_18_while_cond:
    call    dummyBOOLfunc           #  27:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  28:     if     t5 = 1 goto 19_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_19_while_body     
    jmp     l_f2_19_while_body      #  29:     goto   19_while_body
    jmp     l_f2_19_while_body      #  30:     goto   19_while_body
    jmp     l_f2_17                 #  31:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  33:     goto   18_while_cond
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $11705, %eax            #   4:     if     11705 # 25005 goto 8
    movl    $25005, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_8               
    jmp     l_test_9                #   5:     goto   9
l_test_8:
    movl    $1, %eax                #   7:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #   8:     goto   10
l_test_9:
    movl    $0, %eax                #  10:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_10:
    movzbl  -14(%ebp), %eax         #  12:     assign v0 <- t1
    movb    %al, v0                
    movl    $98, %eax               #  13:     assign v1 <- 98
    movb    %al, v1                
    movl    $24360, %eax            #  14:     if     24360 # 72195 goto 14_if_true
    movl    $72195, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  15:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  17:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_1                #  20:     goto   1
l_test_1:
    jmp     l_test_exit            
    call    ReadInt                 #  23:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_20_while_cond:
    jmp     l_test_21_while_body    #  25:     goto   21_while_body
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  27:     goto   20_while_cond

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
