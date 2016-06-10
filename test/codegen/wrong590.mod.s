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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 8 of <array 1 of <array 10 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 4 of <array 10 of <array 3 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 8 of <array 9 of <array 6 of <array 5 of <int>>>>>>> %ebp+16 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
l_f0_2_while_cond:
    movl    $1, %eax                #   2:     if     1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    call    ReadInt                 #   5:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     return t0
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
l_f0_7_while_cond:
    movl    $81503, %eax            #  10:     sub    t1 <- 81503, 66255
    movl    $66255, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     if     t1 <= 33080 goto 8_while_body
    movl    $33080, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_while_body:
    movl    $87780, %eax            #  14:     return 87780
    jmp     l_f0_exit              
    movl    $79996, %eax            #  15:     assign v3 <- 79996
    movl    %eax, -24(%ebp)        
    jmp     l_f0_7_while_cond       #  16:     goto   7_while_cond
l_f0_6:

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 9 of <array 2 of <array 1 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 10 of <array 2 of <array 7 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    jmp     l_f1_exit              
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   2:     goto   5_while_cond
l_f1_8_while_cond:
    movl    $97, %eax               #   4:     if     97 <= 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #   5:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   7:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_0:
    jmp     l_f1_13_if_false        #  11:     goto   13_if_false
l_f1_15_while_cond:
    jmp     l_f1_17                 #  13:     goto   17
l_f1_17:
    jmp     l_f1_15_while_cond      #  15:     goto   15_while_cond
    jmp     l_f1_11                 #  16:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $98, %eax               #  19:     assign v3 <- 98
    movb    %al, -13(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 10 of <array 1 of <array 9 of <array 3 of <char>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    jmp     l_f2_4                  #   0:     goto   4
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_5                  #   2:     goto   5
l_f2_4:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $0, %eax                #   9:     if     0 # t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #  10:     goto   2_if_false
l_f2_1_if_true:
    movl    $29042, %eax            #  12:     if     29042 < 53276 goto 10_if_true
    movl    $53276, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $100, %eax              #  18:     if     100 >= 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  19:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  21:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_17                 #  24:     goto   17
l_f2_17:
    movl    $100, %eax              #  26:     if     100 > 97 goto 21_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  27:     goto   22_if_false
l_f2_21_if_true:
    jmp     l_f2_20                 #  29:     goto   20
l_f2_22_if_false:
l_f2_20:
l_f2_25_while_cond:
    movl    $83278, %eax            #  33:     if     83278 <= 76201 goto 26_while_body
    movl    $76201, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_26_while_body     
    jmp     l_f2_24                 #  34:     goto   24
l_f2_26_while_body:
    jmp     l_f2_25_while_cond      #  36:     goto   25_while_cond
l_f2_24:
l_f2_29_while_cond:
    jmp     l_f2_29_while_cond      #  39:     goto   29_while_cond
l_f2_32_while_cond:
    jmp     l_f2_31                 #  41:     goto   31
    jmp     l_f2_32_while_cond      #  42:     goto   32_while_cond
l_f2_31:
    movl    $37365, %eax            #  44:     if     37365 > 86804 goto 35_if_true
    movl    $86804, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_35_if_true        
    jmp     l_f2_36_if_false        #  45:     goto   36_if_false
l_f2_35_if_true:
    jmp     l_f2_34                 #  47:     goto   34
l_f2_36_if_false:
l_f2_34:
    jmp     l_f2_0                  #  50:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
    movl    $61911, %eax            #  54:     if     61911 > 60827 goto 43_if_true
    movl    $60827, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_43_if_true        
    jmp     l_f2_44_if_false        #  55:     goto   44_if_false
l_f2_43_if_true:
    jmp     l_f2_42                 #  57:     goto   42
l_f2_44_if_false:
l_f2_42:
    call    dummyINTfunc            #  60:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  61:     assign v2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_48                 #  62:     goto   48
l_f2_48:
    jmp     l_f2_39                 #  64:     goto   39
l_f2_39:

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_test_exit            
    movl    $99, %eax               #   2:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    movl    $100, %eax              #   4:     if     100 = 99 goto 4_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_4_if_true       
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   7:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_exit            
l_test_9_while_cond:
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  13:     goto   13_while_cond
    jmp     l_test_9_while_cond     #  14:     goto   9_while_cond

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
