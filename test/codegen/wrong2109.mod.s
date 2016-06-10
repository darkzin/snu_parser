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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t5       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t6       <bool> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    movl    $20813, %eax            #   1:     if     20813 < 60468 goto 4
    movl    $60468, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   9:     return t0
    jmp     l_f0_exit              
    movl    $47859, %eax            #  10:     assign v0 <- 47859
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #  12:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  13:     if     99 < 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  16:     goto   11
l_f0_13_if_false:
l_f0_11:
l_f0_16_while_cond:
    jmp     l_f0_16_while_cond      #  20:     goto   16_while_cond
    jmp     l_f0_0                  #  21:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_23                 #  24:     goto   23
    jmp     l_f0_23                 #  25:     goto   23
    jmp     l_f0_24                 #  26:     goto   24
l_f0_23:
    movl    $1, %eax                #  28:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_25                 #  29:     goto   25
l_f0_24:
    movl    $0, %eax                #  31:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_25:
    jmp     l_f0_28                 #  33:     goto   28
    jmp     l_f0_28                 #  34:     goto   28
    jmp     l_f0_28                 #  35:     goto   28
    jmp     l_f0_29                 #  36:     goto   29
l_f0_28:
    movl    $1, %eax                #  38:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_30                 #  39:     goto   30
l_f0_29:
    movl    $0, %eax                #  41:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_f0_30:
    movzbl  -21(%ebp), %eax         #  43:     if     t3 # t4 goto 19
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_19                
    jmp     l_f0_20                 #  44:     goto   20
l_f0_19:
    movl    $1, %eax                #  46:     assign t5 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_21                 #  47:     goto   21
l_f0_20:
    movl    $0, %eax                #  49:     assign t5 <- 0
    movb    %al, -23(%ebp)         
l_f0_21:
    movzbl  -23(%ebp), %eax         #  51:     return t5
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  52:     call   t6 <- dummyBOOLfunc
    movb    %al, -24(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 37 of <array 35 of <array 32 of <array 83 of <array 68 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 46 of <array 18 of <array 92 of <array 61 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyProcedure          #   2:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    movl    $14431, %eax            #   0:     if     14431 >= 19017 goto 1_if_true
    movl    $19017, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $8538, %eax             #   3:     assign v0 <- 8538
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   4:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $3285, %eax             #   5:     assign v0 <- 3285
    movl    %eax, -24(%ebp)        
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  10:     if     98 # 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
l_f2_9_if_true:
    movl    $50130, %eax            #  13:     return 50130
    jmp     l_f2_exit              
    movl    $46724, %eax            #  14:     return 46724
    jmp     l_f2_exit              
    jmp     l_f2_8                  #  15:     goto   8
l_f2_10_if_false:
l_f2_8:

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
l_test_1_while_cond:
    movl    $15017, %eax            #   1:     assign v0 <- 15017
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $99, %eax               #   3:     if     99 < 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
    jmp     l_test_exit            
    movl    $97, %eax               #  12:     assign v1 <- 97
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
